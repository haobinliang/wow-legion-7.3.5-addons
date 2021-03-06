local mod	= DBM:NewMod(2128, "DBM-Party-BfA", 10, 1001)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 17468 $"):sub(12, -3))
mod:SetCreatureID(131527, 131545)
mod:SetMainBossID(131545)
mod:SetEncounterID(2116)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 261440",
	"SPELL_CAST_START 268306 261440",
	"SPELL_CAST_SUCCESS 261438",
	"UNIT_DIED"
)

--TODO, more/better timer data, because Lady Waycrest will interrupt Cadenza casts to cast vitaly transfer, so on normal mode her health drops too fast for meaningful Cd data
--TODO, Contanous Remnants doesn't seem to have a valid debuff spellID that has a duration in tooltip data, so figure out what to use for it on heroic
local warnVirulentPathogen			= mod:NewTargetAnnounce(261440, 2)

local specWarnDiscordantCadenza		= mod:NewSpecialWarningDodge(268306, nil, nil, nil, 2, 2)
local specWarnVirulentPathogen		= mod:NewSpecialWarningMoveAway(261440, nil, nil, nil, 1, 2)
local yellVirulentPathogen			= mod:NewShortYell(261440)
--local specWarnGTFO				= mod:NewSpecialWarningGTFO(238028, nil, nil, nil, 1, 2)

local timerWastingStrikeCD			= mod:NewNextTimer(15.7, 261438, nil, "Tank", nil, 5, nil, DBM_CORE_TANK_ICON)
local timerVirulentPathogenCD		= mod:NewNextTimer(15.7, 261440, nil, nil, nil, 3, nil, DBM_CORE_DISEASE_ICON)
--local timerDiscordantCadenzaCD		= mod:NewNextTimer(16, 268306, nil, nil, nil, 3)--pull:16.1, 3.6, 19.4, 17.0

local countdownWastingStrike		= mod:NewCountdown("Alt15", 261438, "Tank", nil, 3)
local countdownVirulentPathogen		= mod:NewCountdown(15.8, 261440, nil, nil, 3)

mod:AddRangeFrameOption(6, 261440)

function mod:OnCombatStart(delay)
	timerWastingStrikeCD:Start(6-delay)
	countdownWastingStrike:Start(6-delay)
	timerVirulentPathogenCD:Start(10.9-delay)
	countdownVirulentPathogen:Start(10.9-delay)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(6)
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 261440 then
		warnVirulentPathogen:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnVirulentPathogen:Show()
			specWarnVirulentPathogen:Play("scatter")
			yellVirulentPathogen:Yell()
		end
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 268306 and self:AntiSpam(6, 1) then--Antispam in case she interrupts cast to cast transfer, then casts it a second time
		specWarnDiscordantCadenza:Show()
		specWarnDiscordantCadenza:Play("watchstep")
	elseif spellId == 261440 then
		timerVirulentPathogenCD:Start()
		countdownVirulentPathogen:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 261438 then
		timerWastingStrikeCD:Start()
		countdownWastingStrike:Start(15.7)
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
--]]

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 131527 then--Lord Waycrest
		timerWastingStrikeCD:Stop()
		timerVirulentPathogenCD:Stop()
		countdownWastingStrike:Cancel()
		countdownVirulentPathogen:Cancel()
	end
end

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 257939 then
	end
end
--]]
