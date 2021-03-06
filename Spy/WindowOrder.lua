local TopWindow
local AddToScale = {}
local AllWindows = {}
local LevelDiff
local _

local function SetLevel_ProcessChildFrames(...)
	for i = 1, select('#', ...) do
		local frame = select(i, ...)
		Spy:SetLevel(frame, frame:GetFrameLevel() + LevelDiff)
	end
end

function Spy:SetLevel(frame, level)
	LevelDiff = level - frame:GetFrameLevel()
	frame:SetFrameLevel(level)
end

function Spy:InitOrder()
	TopWindow = UIParent
	Spy:AddWindow(Spy.MainWindow)
end

function Spy:SetWindowTop(window)
	if InCombatLockdown() then return end
	local Check = window.Above

	while Check ~= nil do
		window.Above = Check.Above
		Check.Above = window

		Check.Below = window.Below
		window.Below = Check

		Check.Below.Above = Check

		Spy:SetLevel(Check, Check.Below:GetFrameLevel() + 10)
		Check = window.Above
	end
	Spy:SetLevel(window, window.Below:GetFrameLevel() + 10)
	TopWindow = window
end

function Spy:AddWindow(window)
	window.Below = TopWindow
	TopWindow.Above = window
	window.Above = nil

	Spy:SetLevel(window, TopWindow:GetFrameLevel() + 10)
	TopWindow = window

	AddToScale[#AddToScale + 1] = window
	AllWindows[#AllWindows + 1] = window

	window.isLocked = Spy.db.profile.Locked
end

function Spy:LockWindows(lock)
--	for _, v in pairs(AllWindows) do
	for k, v in pairs(AllWindows) do
		if v.DragBottomRight then
			v.isLocked = lock
			v:EnableMouse(not lock)
			if lock then
				v.DragBottomRight:Hide()
				v.DragBottomLeft:Hide()
			else
				v.DragBottomRight:Show()
				v.DragBottomLeft:Show()
			end
		else
			v.isLocked = false
			v:EnableMouse(true)
		end
	end
end

--[[function Spy:SetSpyLocked()
	for _, v in pairs (AllWindows) do
		if Spy.db.profile.LockSpy then
			v:SetMovable(false)
		else
			v:SetMovable(true)
		end
		v:SetMovable(Spy.db.profile.LockSpy)
		end
	end
end

function Spy:SetSpyLocked()
--	local theFrame = Spy.MainWindow
	if Spy.db.profile.LockSpy then
		Spy.db.profile.LockSpy = true
--		theFrame:SetMovable(false)
		DEFAULT_CHAT_FRAME:AddMessage("Spy Locked")
	else
		Spy.db.profile.LockSpy = false
--		theFrame:SetMovable(true)
		DEFAULT_CHAT_FRAME:AddMessage("Spy Unlocked")
	end
	Spy:CreateMainWindow()
	--v:SetMovable(Spy.db.profile.LockSpy)
end]]
