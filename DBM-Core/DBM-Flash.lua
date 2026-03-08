---------------
--  Globals  --
---------------
DBM.Flash = {}

--------------
--  Locals  --
--------------
local flashFrame = DBM.Flash
local frame, duration, halfDuration, elapsed, totalRepeat, lastFlashAlpha

--------------------
--  Create Frame  --
--------------------
frame = CreateFrame("Frame", "DBMFlash", UIParent)
frame.backdropInfo = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background" -- 137056
}
frame:SetBackdrop(frame.backdropInfo)
frame:SetAllPoints(UIParent)
frame:SetFrameStrata("BACKGROUND")
frame:Hide()

------------------------
--  OnUpdate Handler  --
------------------------
frame:SetScript("OnUpdate", function(self, e)
	elapsed = elapsed + e
	if elapsed >= duration then
		if totalRepeat == 0 then
			self:Hide()
			return
		end
		elapsed = 0
		totalRepeat = totalRepeat - 1
		if lastFlashAlpha ~= 0 then
			lastFlashAlpha = 0
			self:SetAlpha(0)
		end
		return
	end
	local alpha = -(elapsed / halfDuration - 1) ^ 2 + 1
	if lastFlashAlpha ~= alpha then
		lastFlashAlpha = alpha
		self:SetAlpha(alpha)
	end
end)

function flashFrame:Show(red, green, blue, dur, alpha, repeatFlash)
	duration = dur or 0.4
	halfDuration = duration / 2
	elapsed = 0
	totalRepeat = repeatFlash or 0
	lastFlashAlpha = nil
	frame:SetBackdropColor(red or 1, green or 0, blue or 0, alpha or 0.3)
	frame:Show()
end

function flashFrame:IsShown()
	return frame and frame:IsShown()
end

function flashFrame:Hide()
	lastFlashAlpha = nil
	frame:Hide()
end
