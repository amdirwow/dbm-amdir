#!/usr/bin/env python3
"""Build DBM-Core/UkMonsterText.lua from the server's world DB.

The client always reports ruRU, so DBM loads localization.ru.lua for both
Russian and Ukrainian players, but the server sends Ukrainian players the
esMX text. DBM-Core translates incoming boss/BG messages back to Russian
with the table generated here, so mods keep matching their ru strings.

Only DB texts referenced by DBM (in exactly one of the two languages) are included.

Usage: gen_uk_monster_text.py <worldserver.conf>
"""
import pathlib
import re
import subprocess
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
OUT = ROOT / "DBM-Core" / "UkMonsterText.lua"

RU, UK = "ruRU", "esMX"


def db_args(conf):
    m = re.search(r'^WorldDatabaseInfo\s*=\s*"([^"]+)"', pathlib.Path(conf).read_text(), re.M)
    host, port, user, password, name = m.group(1).split(";")
    return ["mysql", "-h", host, "-P", port, "-u", user, f"-p{password}", name, "-N", "-B", "--raw"]


def query(args, sql):
    out = subprocess.run(args + ["-e", sql], capture_output=True, check=True).stdout.decode("utf-8", "replace")
    # --raw keeps embedded newlines, so rows are split on the \x1e marker added in SQL
    return [row.strip("\n").split("\t") for row in out.split("\x1e\n") if row.strip("\n")]


def load_pairs(args):
    pairs = []
    for field in ("MaleText", "FemaleText"):
        rows = query(args, f"""
            SELECT r.{field}, u.{field}, CHAR(30) FROM broadcast_text_locale r
            JOIN broadcast_text_locale u ON u.ID = r.ID AND u.locale = '{UK}'
            WHERE r.locale = '{RU}'""")
        pairs += [(r[0], r[1]) for r in rows if len(r) >= 2]
    rows = query(args, f"""
        SELECT r.Text, u.Text, CHAR(30) FROM creature_text_locale r
        JOIN creature_text_locale u ON u.CreatureID = r.CreatureID AND u.GroupID = r.GroupID
            AND u.ID = r.ID AND u.Locale = '{UK}'
        WHERE r.Locale = '{RU}'""")
    pairs += [(r[0], r[1]) for r in rows if len(r) >= 2]
    return [(ru, uk) for ru, uk in pairs if ru and uk and ru != uk]


CYRILLIC = re.compile("[А-Яа-яЁё]")
STRING = re.compile(r'"((?:[^"\\]|\\.)*)"')
# Lua pattern pieces and format specifiers split a DBM string into literal parts
NON_LITERAL = re.compile(r"%[sdS]|%[.\-*+?()%^$]|\.[-*+]|[()^$]")


def dbm_literals():
    literals = set()
    for path in ROOT.rglob("*.lua"):
        if path.name.startswith("localization.") and not path.name.endswith(".ru.lua"):
            continue
        if path.parts[len(ROOT.parts)] in ("DBM-GUI", "DBM-Core"):
            continue
        for m in STRING.finditer(path.read_text("utf-8", "replace")):
            s = m.group(1).replace('\\"', '"')
            if not CYRILLIC.search(s):
                continue
            longest = max(NON_LITERAL.split(s), key=len).strip()
            if len(longest) >= 8:
                literals.add(longest)
    return literals


def lua_string(s):
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n").replace("\r", "") + '"'


# Player name in any form ($n, $N, |3-3($n) declension) becomes one capture.
NAME_TOKEN = re.compile(r"\|3-\d\(\$[nN]\)|\$[nN]")
GENDER_TOKEN = re.compile(r"\$[gG]([^:;]*):([^:;]*)(?::[^;]*)?;")
LUA_MAGIC = re.compile(r"([().%+\-*?\[\]^$])")


def text_pattern(text):
    """Lua pattern matching the text as the client delivers it."""
    out, pos = [], 0
    for m in re.finditer(f"{NAME_TOKEN.pattern}|{GENDER_TOKEN.pattern}", text):
        out.append(LUA_MAGIC.sub(r"%\1", text[pos:m.start()]))
        out.append("(.-)" if NAME_TOKEN.fullmatch(m.group(0)) else ".-")
        pos = m.end()
    out.append(LUA_MAGIC.sub(r"%\1", text[pos:]))
    return "^" + "".join(out) + "$"


def text_format(text):
    """Text with every player name replaced by %s, male gender forms."""
    text = GENDER_TOKEN.sub(lambda m: m.group(1), text.replace("%", "%%"))
    return NAME_TOKEN.sub("%s", text)


def male(text):
    return GENDER_TOKEN.sub(lambda m: m.group(1), text)


def referenced(text, literals):
    # A literal counts only if it is a real part of this text, not e.g. a boss
    # name that also appears somewhere inside a long yell.
    return any(lit in text and (len(lit) * 3 >= len(text) or (len(lit) >= 15 and text.startswith(lit)))
               for lit in literals)


def main():
    pairs = load_pairs(db_args(sys.argv[1]))
    literals = dbm_literals()
    exact, patterns = {}, {}
    for ru, uk in pairs:
        # $B line breaks only occur in gossip/quest texts, never in boss or BG messages
        if "$B" in ru or "$b" in ru:
            continue
        # Most mods match the Russian text, some were switched to the Ukrainian one.
        # Translate the server text into whichever language the mods expect; if they
        # know both (or neither), leave the message alone.
        ref_ru, ref_uk = referenced(ru, literals), referenced(uk, literals)
        if ref_ru == ref_uk:
            continue
        src, dst = (uk, ru) if ref_ru else (ru, uk)
        src_names, dst_names = NAME_TOKEN.findall(src), NAME_TOKEN.findall(dst)
        if src_names or dst_names:
            if len(src_names) == len(dst_names):
                patterns.setdefault(text_pattern(src), text_format(dst))
        else:
            exact.setdefault(male(src), male(dst))

    lines = [
        "-- Generated by tools/gen_uk_monster_text.py from the world DB. Do not edit by hand.",
        "-- Server text (Ukrainian esMX or Russian ruRU) -> the text DBM mods match on.",
        "DBM_UkMonsterText = {",
    ]
    lines += [f"\t[{lua_string(src)}] = {lua_string(dst)}," for src, dst in sorted(exact.items())]
    lines += [
        "}",
        "-- Texts with a player name: Lua pattern -> string.format template with the names.",
        "DBM_UkMonsterTextPatterns = {",
    ]
    lines += [f"\t{{{lua_string(p)}, {lua_string(f)}}}," for p, f in sorted(patterns.items())]
    lines.append("}")
    OUT.write_text("\n".join(lines) + "\n", "utf-8")
    print(f"{len(exact)} exact + {len(patterns)} patterns -> {OUT}")


if __name__ == "__main__":
    main()
