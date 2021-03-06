local mod	= DBM:NewMod(2098, "DBM-Party-BfA", 9, 1001)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 17473 $"):sub(12, -3))
mod:SetCreatureID(127484)
mod:SetEncounterID(2102)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 257777 257827",
	"SPELL_AURA_REMOVED 257827",
	"SPELL_CAST_START 257791 257793 257785",
	"SPELL_CAST_SUCCESS 257777"
)

local warnSmokePowder				= mod:NewSpellAnnounce(257793, 2)
local warnMotivatingCry				= mod:NewTargetNoFilterAnnounce(257827, 2)
local warnPhase2					= mod:NewPhaseAnnounce(2, 2)

local specWarnCripShiv				= mod:NewSpecialWarningDispel(257777, "RemovePoison", nil, nil, 1, 2)
local specWarnHowlingFear			= mod:NewSpecialWarningInterrupt(257791, "HasInterrupt", nil, nil, 1, 2)
local specWarnFlashingDagger		= mod:NewSpecialWarningMoveTo(257785, nil, nil, nil, 3, 2)
--local yellSwirlingScythe			= mod:NewYell(195254)
--local specWarnGTFO				= mod:NewSpecialWarningGTFO(238028, nil, nil, nil, 1, 2)

local timerCripShivCD				= mod:NewCDTimer(16.1, 257777, nil, "Healer|RemovePoison", nil, 5, nil, DBM_CORE_HEALER_ICON..DBM_CORE_POISON_ICON)
local timerHowlingFearCD			= mod:NewCDTimer(14.6, 257791, nil, "HasInterrupt", nil, 4, nil, DBM_CORE_INTERRUPT_ICON)
local timerFlashingDaggerCD			= mod:NewCDTimer(31.6, 257785, nil, nil, nil, 2, nil, DBM_CORE_DEADLY_ICON)

--mod:AddRangeFrameOption(5, 194966)

function mod:OnCombatStart(delay)
	timerCripShivCD:start(7.2-delay)--SUCCESS
	timerHowlingFearCD:Start(8.5-delay)
	timerFlashingDaggerCD:Start(12.2-delay)
end

function mod:OnCombatEnd()
--	if self.Options.RangeFrame then
--		DBM.RangeCheck:Hide()
--	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 257777 then
		specWarnCripShiv:Show(args.destName)
		specWarnCripShiv:Play("helpdispel")
	elseif spellId == 257827 then
		warnMotivatingCry:Show(args.destName)
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 257827 then
		warnPhase2:Show()
		--Timers are identical to pull timers
		timerCripShivCD:Start(7.2)
		timerHowlingFearCD:Start(8.5)
		timerFlashingDaggerCD:Start(12.2)
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 257791 then
		if self:CheckInterruptFilter(args.sourceGUID) then
			specWarnHowlingFear:Show(args.sourceName)
			specWarnHowlingFear:Play("kickcast")
		end
		timerHowlingFearCD:Start()
	elseif spellId == 257793 then
		warnSmokePowder:Show()
		timerHowlingFearCD:Stop()
		timerCripShivCD:Stop()
		timerFlashingDaggerCD:Stop()
	elseif spellId == 257785 then
		specWarnFlashingDagger:Show(DBM_CORE_BREAK_LOS)
		specWarnFlashingDagger:Play("findshelter")
		timerFlashingDaggerCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 257777 then
		timerCripShivCD:Start()
	end
end

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 228007 and destGUID == UnitGUID("player") and self:AntiSpam(2, 4) then
		specWarnGTFO:Show()
		specWarnGTFO:Play("runaway")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 124396 then
		
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 257939 then
	end
end
--]]
