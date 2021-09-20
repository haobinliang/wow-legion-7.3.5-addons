--[[--------------------------------------------------------------------
    Copyright (C) 2012, 2013, 2014, 2015 Johnny C. Lam.
    See the file LICENSE.txt for copying permission.
--]]----------------------------------------------------------------------

local OVALE, Ovale = ...
local OvaleDebug = Ovale:NewModule("OvaleDebug", "AceTimer-3.0")
Ovale.OvaleDebug = OvaleDebug

--<private-static-properties>
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local L = Ovale.L
local LibTextDump = LibStub("LibTextDump-1.0")
local OvaleOptions = Ovale.OvaleOptions

local format = string.format
local gmatch = string.gmatch
local gsub = string.gsub
local next = next
local pairs = pairs
local strlen = string.len
local tonumber = tonumber
local tostring = tostring
local type = type
local API_GetSpellInfo = GetSpellInfo
local API_GetTime = GetTime
local DEFAULT_CHAT_FRAME = DEFAULT_CHAT_FRAME

-- Flags used by debugging print functions.
-- If "traced" flag is set, then the public "trace" property is toggled before the next frame refresh.
local self_traced = false
-- LibTextDump-1.0 object for output from Log() or Logf() methods.
local self_traceLog = nil
-- Maximum length of the trace log.
local OVALE_TRACELOG_MAXLINES = 4096	-- 2^14

do
	local actions = {
		debug = {
			name = L["Debug"],
			type = "execute",
			func = function()
				local appName = OvaleDebug:GetName()
				AceConfigDialog:SetDefaultSize(appName, 800, 550)
				AceConfigDialog:Open(appName)
			end,
		},
	}
	-- Insert actions into OvaleOptions.
	for k, v in pairs(actions) do
		OvaleOptions.options.args.actions.args[k] = v
	end
	-- Add a global data type for debug options.
	OvaleOptions.defaultDB.global = OvaleOptions.defaultDB.global or {}
	OvaleOptions.defaultDB.global.debug = {}
	OvaleOptions:RegisterOptions(OvaleDebug)
end
--</private-static-properties>

--<public-static-properties>
OvaleDebug.options = {
	name = OVALE .. " " .. L["Debug"],
	type = "group",
	args = {
		toggles = {
			name = L["Options"],
			type = "group",
			order = 10,
			args = {},
			get = function(info)
				local value = Ovale.db.global.debug[info[#info]]
				return (value ~= nil)
			end,
			set = function(info, value)
				value = value or nil
				Ovale.db.global.debug[info[#info]] = value
			end,
		},
		trace = {
			name = L["Trace"],
			type = "group",
			order = 20,
			args = {
				trace = {
					order = 10,
					type = "execute",
					name = L["Trace"],
					desc = L["Trace the next frame update."],
					func = function()
						OvaleDebug:DoTrace(true)
					end,
				},
				traceLog = {
					order = 20,
					type = "execute",
					name = L["Show Trace Log"],
					func = function()
						OvaleDebug:DisplayTraceLog()
					end,
				},
			},
		},
	},
}

-- If "bug" flag is set, then the next frame refresh is traced.
OvaleDebug.bug = false
-- Flag to activate tracing the function calls for the next frame refresh.
OvaleDebug.trace = false
--</public-static-properties>

--<public-static-methods>
function OvaleDebug:OnInitialize()
	local appName = self:GetName()
	AceConfig:RegisterOptionsTable(appName, self.options)
	AceConfigDialog:AddToBlizOptions(appName, L["Debug"], L["Ovale"])
end

function OvaleDebug:OnEnable()
	self_traceLog = LibTextDump:New(OVALE .. " - " .. L["Trace Log"], 750, 500)
end

function OvaleDebug:DoTrace(displayLog)
	self_traceLog:Clear()
	self.trace = true
	self:Log("=== Trace @%f", API_GetTime())
	if displayLog then
		self:ScheduleTimer("DisplayTraceLog", 0.5)
	end
end

function OvaleDebug:ResetTrace()
	self.bug = false
	self.trace = false
	self_traced = false
end

function OvaleDebug:UpdateTrace()
	-- If trace flag is set here, then flag that we just traced one frame.
	if self.trace then
		self_traced = true
	end
	-- If there was a bug, then enable trace on the next frame.
	if self.bug then
		self.trace = true
	end
	-- Toggle trace flag so we don't endlessly trace successive frames.
	if self.trace and self_traced then
		self_traced = false
		self.trace = false
	end
end

function OvaleDebug:RegisterDebugging(addon)
	local name = addon:GetName()
	self.options.args.toggles.args[name] = {
		name = name,
		desc = format(L["Enable debugging messages for the %s module."], name),
		type = "toggle",
	}
	addon.Debug = self.Debug
	addon.DebugTimestamp = self.DebugTimestamp
end

--[[
	Output the parameters as a string to DEFAULT_CHAT_FRAME.
--]]
function OvaleDebug:Debug(...)
	local name = self:GetName()
	if Ovale.db.global.debug[name] then
		-- Match output format from AceConsole-3.0 Print() method.
		DEFAULT_CHAT_FRAME:AddMessage(format("|cff33ff99%s|r: %s", name, Ovale:MakeString(...)))
	end
end

--[[
	Output the parameters as a string to DEFAULT_CHAT_FRAME with a timestamp.
--]]
function OvaleDebug:DebugTimestamp(...)
	local name = self:GetName()
	if Ovale.db.global.debug[name] then
		-- Add a yellow timestamp to the start.
		local now = API_GetTime()
		local s = format("|cffffff00%f|r %s", now, Ovale:MakeString(...))
		-- Match output format from AceConsole-3.0 Print() method.
		DEFAULT_CHAT_FRAME:AddMessage(format("|cff33ff99%s|r: %s", name, s))
	end
end

function OvaleDebug:Log(...)
	if self.trace then
		local N = self_traceLog:Lines()
		if N < OVALE_TRACELOG_MAXLINES - 1 then
			self_traceLog:AddLine(Ovale:MakeString(...))
		elseif N == OVALE_TRACELOG_MAXLINES - 1 then
			self_traceLog:AddLine("WARNING: Maximum length of trace log has been reached.")
		end
	end
end

function OvaleDebug:DisplayTraceLog()
	if self_traceLog:Lines() == 0 then
		self_traceLog:AddLine("Trace log is empty.")
	end
	self_traceLog:Display()
end

do
	local NEW_DEBUG_NAMES = {
		action_bar = "OvaleActionBar",
		aura = "OvaleAura",
		combo_points = "OvaleComboPoints",
		compile = "OvaleCompile",
		damage_taken = "OvaleDamageTaken",
		enemy = "OvaleEnemies",
		guid = "OvaleGUID",
		missing_spells = false,
		paper_doll = "OvalePaperDoll",
		power = "OvalePower",
		snapshot = false,
		spellbook = "OvaleSpellBook",
		state = "OvaleState",
		steady_focus = "OvaleSteadyFocus",
		unknown_spells = false,
	}

	function OvaleDebug:UpgradeSavedVariables()
		local global = Ovale.db.global
		local profile = Ovale.db.profile

		-- All profile-specific debug options are removed.  They are now in the global database.
		profile.debug = nil

		-- Debugging options have changed names.
		for old, new in pairs(NEW_DEBUG_NAMES) do
			if global.debug[old] and new then
				global.debug[new] = global.debug[old]
			end
			global.debug[old] = nil
		end

		-- If a debug option is toggled off, it is "stored" as nil, not "false".
		for k, v in pairs(global.debug) do
			if not v then
				global.debug[k] = nil
			end
		end
	end
end
--</public-static-methods>
