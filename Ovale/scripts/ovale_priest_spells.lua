local OVALE, Ovale = ...
local OvaleScripts = Ovale.OvaleScripts

do
	local name = "ovale_priest_spells"
	local desc = "[7.0] Ovale: Priest spells"
	local code = [[
# Priest spells and functions.

# Dummy spells
Define(mindbender_tier18_2pc 999123040)
	SpellInfo(mindbender_tier18_2pc dummy_replace=123040 replace=mindbender)
	SpellInfo(mindbender_tier18_2pc cd=20)
Define(shadowfiend_tier18_2pc 999034433)
	SpellInfo(shadowfiend_tier18_2pc dummy_replace=34433 replace=shadowfiend)
	SpellInfo(shadowfiend_tier18_2pc cd=20)

Define(auspicious_spirits_talent 21)
Define(body_and_soul_talent 4)
Define(dispersion 47585)
	SpellInfo(dispersion cd=120)
	SpellAddBuff(dispersion dispersion_buff=1)
Define(dispersion_buff 47585)
	SpellInfo(dispersion_buff duration=6)
Define(divine_star 110744)
Define(fortress_of_the_mind_talent 2)
Define(from_the_shadows 193642)
Define(insanity_drain_stacks_buff 194249)
Define(lash_of_insanity 238137)
Define(legacy_of_the_void_talent 19)
Define(lights_wrath 207946)
	SpellInfo(lights_wrath cd=90)
Define(mass_hysteria 194378)
Define(mental_fatigue_debuff 185104)
	SpellInfo(mental_fatigue_debuff duration=10 max_stacks=5)
Define(mental_instinct_buff 167254)
	SpellInfo(mental_instinct_buff duration=4 max_stacks=12)
Define(mind_blast 8092)
	SpellInfo(mind_blast cd=9 cd_haste=spell insanity=-15 charges=1)
	SpellInfo(mind_blast insanity_percent=120 talent=fortress_of_the_mind_talent)
	SpellInfo(mind_blast charges=2 if_equipped=mangazas_madness)
	SpellRequire(mind_blast insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(mind_blast insanity_percent 200=buff,surrender_to_madness_buff)
	SpellRequire(mind_blast cd 6=buff,voidform_buff)
	SpellAddBuff(mind_blast shadowy_insight_buff=0 if_spell=shadowy_insight)
Define(mind_bomb 205369)
Define(mind_bomb_debuff 205369)
	SpellInfo(mind_bomb_debuff duration=2)
Define(mind_flay 15407)
	SpellInfo(mind_flay channel=3 insanity=-4 haste=spell)
	SpellInfo(mind_flay insanity_percent=120 talent=fortress_of_the_mind_talent)
	SpellRequire(mind_flay insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(mind_flay insanity_percent 200=buff,surrender_to_madness_buff)
Define(mindbender 123040)
	SpellInfo(mindbender cd=60 tag=main)
	SpellInfo(mindbender addcd=-40 itemset=T18 itemcount=2 specialization=shadow)
Define(mindbender_talent 18)
Define(misery_talent 17)
Define(penance 47540)
	SpellInfo(penance cd=9)
Define(plea 200829)
Define(power_infusion 10060)
	SpellInfo(power_infusion cd=120 gcd=0)
	SpellAddBuff(power_infusion power_infusion_buff=1)
Define(power_infusion_buff 10060)
	SpellInfo(power_infusion_buff duration=20)
Define(power_infusion_talent 19)
Define(power_word_shield 17)
	SpellInfo(power_word_shield cd=7.5)
	SpellInfo(power_word_shield cd=7.5 cd_haste=spell)
	SpellRequire(power_word_shield cd 0=buff,rapture_buff)
Define(power_word_solace 129250)
	SpellInfo(power_word_solace cd=12)
Define(purge_the_wicked 204197)
	SpellAddTargetDebuff(purge_the_wicked purge_the_wicked_debuff=1)
Define(purge_the_wicked_debuff 204213)
	SpellInfo(purge_the_wicked_debuff duration=20 tick=2)
Define(purge_the_wicked_talent 16)
Define(psychic_scream 8122)
	SpellInfo(psychic_scream cd=30)
Define(psychic_scream_talent 11)
Define(rapture 47536)
	SpellInfo(rapture cd=120)
Define(rapture_buff 47536)
	SpellInfo(rapture_buff duration=8)
Define(reaper_of_souls_talent 11)
Define(sanlayn_talent 13)
Define(schism 214621)
	SpellInfo(schism cd=6)
	SpellAddTargetDebuff(schism schism_debuff=1)
Define(schism_debuff 214621)
	SpellInfo(schism_debuff duration=6)
Define(schism_talent 3)
Define(shadow_crash 205385)
	SpellInfo(shadow_crash cd=30 insanity=-15 tag=shortcd)
	SpellRequire(shadow_crash insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(shadow_crash insanity_percent 200=buff,surrender_to_madness_buff)
Define(shadow_crash_talent 17)
Define(shadow_mend 186263)
Define(shadow_word_death 32379)
	SpellInfo(shadow_word_death target_health_pct=20 insanity=-15 cd=9 charges=2)
	SpellInfo(shadow_word_death target_health_pct=35 insanity=-30 talent=reaper_of_souls_talent)
	SpellRequire(shadow_word_death insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(shadow_word_death insanity_percent 200=buff,surrender_to_madness_buff)
Define(shadow_word_death_reset_cooldown_buff 125927)	# OvaleShadowWordDeath
	SpellInfo(shadow_word_death_reset_cooldown_buff duration=9)
Define(shadow_word_pain 589)
	SpellInfo(shadow_word_pain insanity=-4)
	SpellAddTargetDebuff(shadow_word_pain shadow_word_pain_debuff=1)
	SpellRequire(shadow_word_pain insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(shadow_word_pain insanity_percent 200=buff,surrender_to_madness_buff)
Define(shadow_word_pain_debuff 589)
	SpellInfo(shadow_word_pain_debuff duration=18 haste=spell tick=3)
Define(shadow_word_void 205351)
	SpellInfo(shadow_word_void cd=30 charges=3 insanity=-25 tag=main)
	SpellRequire(shadow_word_void insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(shadow_word_void insanity_percent 200=buff,surrender_to_madness_buff)
Define(shadow_word_void_talent 3)
Define(shadowfiend 34433)
	SpellInfo(shadowfiend cd=180 tag=main)
	SpellInfo(shadowfiend addcd=-160 itemset=T18 itemcount=2 specialization=shadow)
	SpellInfo(shadowfiend replace=mindbender if_spell=mindbender)
Define(shadowform 232698)
	SpellRequire(shadowform unusable 1=buff,voidform_buff)
Define(shadowform_buff 232698)
Define(shadowy_insight 162452)
Define(shadowy_insight_buff 124430)
	SpellInfo(shadowy_insight_buff duration=12)
Define(shadowy_insight_talent 15)
Define(silence 15487)
	SpellInfo(silence cd=45 gcd=0 interrupt=1)
Define(smite 585)
Define(sphere_of_insanity 194179)
Define(surrender_to_madness 193223)
	SpellInfo(surrender_to_madness cd=600)
	SpellAddBuff(surrender_to_madness surrender_to_madness_buff=1)
Define(surrender_to_madness_buff 193223)
	SpellInfo(surrender_to_madness_buff duration=180)
Define(surrender_to_madness_talent 21)
Define(t18_class_trinket 124519)
Define(unleash_the_shadows 194093)
Define(vampiric_touch 34914)
	SpellInfo(vampiric_touch insanity=-6)
	SpellRequire(vampiric_touch insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(vampiric_touch insanity_percent 200=buff,surrender_to_madness_buff)
	SpellAddTargetDebuff(vampiric_touch vampiric_touch_debuff=1)
	SpellAddTargetDebuff(vampiric_touch shadow_word_pain_debuff=1 talent=misery_talent)
Define(vampiric_touch_debuff 34914)
	SpellInfo(vampiric_touch_debuff duration=15 haste=spell tick=3)
Define(void_bolt 205448)
	SpellInfo(void_bolt cd=4.5 insanity=-16 cd_haste=spell)
	SpellRequire(void_bolt unusable 1=buff,!voidform_buff)
	SpellRequire(void_bolt insanity_percent 125=buff,power_infusion_buff)
	SpellRequire(void_bolt insanity_percent 200=buff,surrender_to_madness_buff)
	SpellAddTargetDebuff(void_bolt shadow_word_pain_debuff=refresh)
	SpellAddTargetDebuff(void_bolt vampiric_touch_debuff=refresh)
Define(void_eruption 228260)
	SpellInfo(void_eruption insanity=100 sharedcd=void_bolt tag=main)
	SpellInfo(void_eruption insanity=65 talent=legacy_of_the_void_talent)
	SpellAddBuff(void_eruption voidform_buff=1)
	SpellRequire(void_eruption unusable 1=buff,voidform_buff)
	SpellRequire(void_eruption replace void_bolt=buff,voidform_buff)
Define(void_torrent 205065)
	SpellInfo(void_torrent cd=60 tag=main)
	SpellRequire(void_torrent unusable 0=buff,voidform_buff)
Define(void_torrent_buff 205065) # TODO Insanity does not drain during this buff
Define(voidform_buff 194249)

AddFunction CurrentInsanityDrain {
	if BuffPresent(dispersion_buff) 0 
	if BuffPresent(void_torrent_buff) 0 # for some reason, this does not work as expected
	if BuffPresent(voidform_buff) BuffStacks(voidform_buff)/2 + 9
	0
}

#Legendary
Define(mangazas_madness 132864)
]]

	OvaleScripts:RegisterScript("PRIEST", nil, name, desc, code, "include")
end
