NugComboBar.presets = {
    --- model, cameraReset, scale, xOffset, yOffset
    ["glowPurple"] = {
        NORMAL = { "spells\\gouge_precast_state_hand.m2", false, 1, 0, 0, 0 },
        BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0 },
        name = "(colored)",
    },
    ["glowPurple2"] = {
        NORMAL = { "spells\\gouge_precast_state_hand.m2", false, 1, 0, 0, 0 },
        BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0, "spells/7fx_nightborne_precasthand.m2", false, .75, 0.1,0,0},
    },
    -- {0.02,0.0168,0, rad(90), rad(270), rad(270), 0.006}
    ["glowFreedom"] = {
        NORMAL = { "spells\\gouge_precast_state_hand.m2", false, 1, 0, 0, 0 },
        BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0, "spells/blessingoffreedom_state.m2", true, {0.0328,0.0325,0, rad(90), rad(270), rad(270), 0.006}, nil,nil,nil},
    },
    ["glowShadowFlame"] = {
        NORMAL = { "spells\\gouge_precast_state_hand.m2", false, 1, 0, 0, 0 },
        BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28 },
    },    
    ["glowHoly"] = {
        LEFT = { "spells\\Holy_precast_med_hand_simple.m2", false, 1.3, 0, 0, 0 },
        NORMAL = { "spells\\Holy_precast_med_hand_simple.m2", false, 1.6, 0, 0, 0 },
        BIG = { "spells\\Holy_precast_med_hand_simple.m2", false, 1.7, 0, 0, 0, "spells\\Paladin_headlinghands_state_01.m2", false, 0.4, -0.3,-0.15,0 },
        RIGHT = { "spells\\Holy_precast_med_hand_simple.m2", false, 1.3, 0, 0, 0 },
    },
    -- ["_RuneCharger"] = {
    --     NORMAL = { "spells\\gouge_precast_state_hand.m2", true, 0, 1, 1, 0, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28 },
    --     BIG = { "spells\\gouge_precast_state_hand.m2", true, 0, .77, .77, 0, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28 },
    -- },
    ["_RuneCharger2"] = {
        -- NORMAL = { "spells\\gouge_precast_state_hand.m2", true, 0, 1, 1, 0, "spells\\blessingoffreedom_state.m2",  true,  .002, 12.6, 12.5, 0 },
        -- NORMAL = { "spells\\fire_blue_precast_uber_hand.m2", true, 0.036, 0.70, 0.72, 0, "spells\\blessingoffreedom_state.m2",  true,  .003, 8.35, 8.4, 0 }, --"SPELLS/FlowingWater_High.m2", true, 0.04, .62, .64, 0 },
        
        -- NORMAL = { "spells/7fx_warlock_tormentedsoulspawn_missile.m2", false, 1, 0, 0, 0, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28, 1.3 },
        NORMAL = { "SPELLS/Shadow_Strikes_State_Hand.m2", false, 0.7, -1.1, 0, -0.4, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28, 1.3 },
        BIG = { "SPELLS/Shadow_Strikes_State_Hand.m2", false, 0.7, -1.1, 0, -0.4, "SPELLS/Shadowflame_Cast_Hand.m2", false, 1, 0, 0, 0.28, 1.3 },
    },
    -- ["frostFire"] = {
        -- NORMAL = { 67635, false, 1, -13.7,0,-6},
        -- BIG = { 67635, false, 1, -6.5,0,-2.9},
    -- },
    -- ["frostFireRed"] = {
    --     NORMAL = { 58835, false, 1, -13.7,0,-6},
    --     BIG = { 58835, false, 1, -6.5,0,-2.9},
    -- },
    -- ["fear"] = {
    --     NORMAL = { "SPELLS/Fear_State_Base_V2.m2", true, 0.05, 0, 0, 0 },
    --     BIG = { "SPELLS/FlowingWater_High.m2", true, 0.07, .35, .36, 0 },
    -- },

    ["blue"] = {
        NORMAL = { "SPELLS/FlowingWater_High.m2", false, 3, 0.1, 0, 0 },
        BIG = { "SPELLS/FlowingWater_High.m2", false, 3.6, 0.1, 0, 0 },
    },
    -- ["corrupted"] = {
    --     NORMAL = { "SPELLS/Precast_Corrupted_01.m2", false, 1.1, 0, 0, 0 },
    --     BIG = { "SPELLS/Precast_Corrupted_01.m2", false, 1.3, 0, 0, 0 },
    -- },
    ["furnace"] = {
        NORMAL = { "spells/druid_wrath_impact_v2.m2", false, .7, 0,0,0, "spells/6fx_smallfire.m2", false, 0.27, -3.2, -.2, 0, true },
        BIG = { "spells/druid_wrath_impact_v2.m2", false, 1, 0,0,0, "spells/6fx_smallfire.m2", false, 0.36, -2.4, -.2, 0, true },
    },
    ["furnace2"] = {
        NORMAL = { "spells/cfx_mage_greaterpyroblast_missile.m2", false, 0.4, -0.9, -0.2,0 },
        BIG = { "spells/cfx_mage_greaterpyroblast_missile.m2", false, 0.52, -0.7, -0.16,0 },
    },
    -- ["furnace3"] = {
    --     NORMAL = { "spells/bloodlust_state_hand.m2", false, .6, 0,0,0, "spells/6fx_smallfire.m2", false, 0.27, -3.2, -.2, 0, true },
    --     BIG = { "spells/bloodlust_state_hand.m2", false, .76, 0,0,0, "spells/6fx_smallfire.m2", false, 0.34, -3.2, -.2, 0, true },
    -- },
    ["chiBlast"] = {
        NORMAL = { "SPELLS/Monk_ChiBlast_Precast_Jade.m2", false, 1.05, 0.05, 0, 0 },
        BIG = { "SPELLS/Monk_ChiBlast_Precast_Jade.m2", false, 1.3, 0.03, 0, 0}
    },
    ["chiBlastBlue"] = {
        NORMAL = { "SPELLS/Monk_ChiBlast_Precast.m2", false, 1.05, 0.15, 0, 0 },
        BIG = { "SPELLS/Monk_ChiBlast_Precast.m2", false, 1.3, 0.1, 0, 0, "SPELLS/Monk_CracklingLightning_Impact_Blue.m2", false, 0.5, 0.5, -0.5, 0 },
    },
    -- ["scourge"] = {
    --     NORMAL = { "spells/7fx_deathknight_scourgeofworlds_statechest.m2", true, 0.008, 3.1, 3.1, 0 },
    --     -- BIG = { "SPELLS/Monk_ChiBlast_Precast_Jade.m2", true, 0.033, .77, .77, 0,} -- "SPELLS/Monk_CracklingLightning_Impact.m2", true, 0.012, 2.05, 2.05, 0 },
    -- }

    -- NORMAL = { "spells/7fx_cordana_glaive_missile.m2", true, 0.008, 3.1, 3.1, 0 },
    ["void"] = {
        -- /script NugComboBar.p[1].playermodel:SetModelScale(0.5); NugComboBar.p[1].playermodel:SetPosition(0,0,0);
        -- scale controls black to purple glow ratio
        -- actual scaling is done by moving camera back and forth
        NORMAL = { "spells/7fx_warlock_shadow_missile.m2", false, 0.8, -0.32, 0, 0, "SPELLS/Shadow_Strikes_State_Hand.m2", false, 1, -1.1, 0, -0.4, true },
        BIG = { "spells/7fx_warlock_shadow_missile.m2", false, 1, -0.32, 0, 0, "SPELLS/Shadow_Strikes_State_Hand.m2", false, 1, -0.2, 0.02, 0, true },
    },
    -- ["funnelPurple"] = {
    --     NORMAL = { "spells\\soulfunnel_impact_chest.m2", true, {0.02,0.0168,0, rad(90), rad(270), rad(270), 0.001}, nil, nil, nil },
    --     BIG = { "spells\\soulfunnel_impact_chest.m2", true, {0.02,0.0168,0, rad(90), rad(270), rad(270), 0.006}, nil, nil, nil },
    -- },
    -- ["funnelRed"] = {
    --     NORMAL = { "spells\\healrag_state_chest.m2", true, 0.018, 1.4, 1.4, 0 },
    --     BIG = { "spells\\healrag_state_chest.m2", true, 0.024, 1.05, 1.05, 0 },
    -- },
    ["glowGreen"] = {
        NORMAL = { "spells/enchantments/greenflame_low.m2", false, 1, 2.2,0,1 },
        BIG = { "spells/enchantments/greenflame_low.m2", false, 1, 2.9,0,1.3 },
        name = "(colored)",
    },
    ["glowBlue"] = {
        NORMAL = { "spells/enchantments/blueflame_low.m2", false, 1, 2.2,0,1 },
        BIG = { "spells/enchantments/blueflame_low.m2", false, 1, 2.9,0,1.3 },
        name = "(colored)",
    },
    ["glowOrange"] = {
        NORMAL = { "spells/enchantments/redflame_low.m2", false, 1, 2.2,0,1 },
        BIG = { "spells/enchantments/redflame_low.m2", false, 1, 2.9,0,1.3 },
    },
    ["glowWhite"] = {
        NORMAL = { "spells/enchantments/whiteflame_low.m2", false, 1.3, 2.23,0.03,1, "spells/enchantments/whiteflame_low.m2", false, 1.3, 2.23,-0.03,1, true },
        BIG = { "spells/enchantments/whiteflame_low.m2", false, 1.3, 2.9,0.03,1.3, "spells/enchantments/whiteflame_low.m2", false, 1.3, 2.2,-0.05,1, true },
        name = "(colored)",
    },
    -- ["glowRed"] = {
    --     NORMAL = { "spells/enchantments/redglow_high.m2", false, 1, 1.6,0, 0.7 },
    --     BIG = { "spells/enchantments/redglow_high.m2", false, 1, 2.2,0,1 },
    -- },
    -- ["glowYellow"] = {
    --     NORMAL = { "spells/enchantments/yellowflame_low.m2", false, 1, 2.2,0,1 },
    --     BIG = { "spells/enchantments/yellowflame_low.m2", false, 1, 2.9,0,1.3 },
    -- },
    ["glowLifesteal"] = {
        NORMAL = { "spells/enchantments/purpleflame_low.m2", false, 1, 2.2,0,1 },
        BIG = { "spells/enchantments/purpleflame_low.m2", false, 1, 2.9,0,1.3 },
        --BIG = { "spells\\lifetap_state_chest.m2", true, 0.024, 1.05, 1.05, 0 },
    },
    -- ["funnelBlue"] = {
    --     NORMAL = { "spells/arcaneshot_missile.m2", false, 0.5, -0.35,0,0, "spells\\manafunnel_impact_chest.m2", false, 0.7, 0,0, 0, true },
    --     BIG = { "spells\\manafunnel_impact_chest.m2", false, 0.95, 0,0, 0 },
    -- },
    ["glowFreedom2"] = {
        NORMAL = { "spells\\gouge_precast_state_hand.m2", false, 1, 0, 0, 0 },
        
        -- BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0, "spells/monk_avertharm_state_base.m2",  false,  .5, -5.7,0,0},
        BIG = { "spells\\gouge_precast_state_hand.m2", false, 1.2, 0, 0, 0, "spells/divineshield_v2_chest.m2",  false,  0.8, -17.5, 0, -7.8},        
        -- BIG = { "spells\\gouge_precast_state_hand.m2", false, 0.1, 0, 0, 0, "spells/weaponenchant_pvppandarias2.m2",  false,  2, -0.1,0,0, true},        
    },
    ["arcanePink"] = {
        NORMAL = { "spells/cast_arcane_pink_01.m2", false, 0.9, 0,0,0, "spells/antimagic_precast_hand_02red.m2", false, 2.3, 0,0,0, true },
        BIG = { "spells/cast_arcane_pink_01.m2", false, 1.1, 0,0,0, "spells/antimagic_precast_hand_02red.m2", false, 2.8, 0,0,0, true },
    },
    ["glowArcshot"] = {
        NORMAL = { "spells/arcaneshot_missile.m2", false, 0.5, -0.35,0,0, "spells/antimagic_precast_hand_02red.m2", false, 2.3, 0,0,0, true },
        BIG = { "spells/arcaneshot_missile.m2", false, 0.65, -0.35,0,0, "spells/antimagic_precast_hand_02red.m2", false, 2.8, 0,0,0, true },
        name = "(colored)",
    },
    
    
    -- ["fireGreen"] = {
    --     NORMAL = { "spells\\fel_fire_precast_hand.m2", true, 0.036, 0.70, 0.72, 0 },
    --     BIG = { "spells\\fel_fire_precast_hand.m2", true, 0.047, 0.53, 0.57, 0 },
    -- },
    ["electricBlue"] = {
        NORMAL = { "spells\\lightningbolt_missile.m2", false, .9, 0, 0, 0 },
        BIG = { "spells\\lightningbolt_missile.m2", false, 1.1, 0, 0, 0 },
    },
}


local barBottom = false

local ActivateFunc = function(self)
    if self.dag:IsPlaying() then self.dag:Stop() end
    if self.rag:IsPlaying() then self.rag:Stop() end
    if self:GetAlpha() == 1 then return end
    self.aag:Play()
    if self.glow2 then self.glow2:Play() end
end
local DeactivateFunc = function(self)
    if self.aag:IsPlaying() then self.aag:Stop() end
    if self.rag:IsPlaying() then self.rag:Stop() end
    if self:GetAlpha() == 0 then return end
    self.dag:Play()
end
    local OnFinishedScript = function(self)
        local f = self:GetParent()
        f:dagfunc()
        f:Activate()
        f.dagfunc = nil
        self:SetScript("OnFinished", nil)
    end
local ReappearFunc = function(self, func, arg, speed)
    if self.aag:IsPlaying() then self.aag:Stop() end
    if self.dag:IsPlaying() then self.dag:Stop() end
    self.ragfunc = func
    self.ragfuncarg = arg
    self.rag:SetSpeed(speed or 1)
    self.rag:Play()
end

local SR1 = 9
local SR2 = 10
local SR3 = 11
local SR4 = 12
local SR5 = 13
local SR6 = 14
local SR7 = 15
local SR8 = 16

local pointtex = {
    [1] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {0, 26/256, 0, 1},
        role = "LEFT",
        width = 26, height = 32,
        psize = 14,
        poffset_x = 19, poffset_y = -14,
    },
    [2] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {26/256, 50/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [3] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {50/256, 74/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [4] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {74/256, 98/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [5] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {26/256, 50/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [6] = { -- the big one
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {98/256, 140/256, 0, 1},
        role = "BIG",
        width = 42, height = 32,
        psize = 18,
        poffset_x = 20, poffset_y = -14,
        bgeffect = true,
    },

    --reversed textures for paladin
    [7] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {196/256, 221/256, 0, 1},
        role = "NORMAL",
        width = 25, height = 32,
        toffset_x = -13, drawlayer = 1,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },

    [8] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {221/256, 1, 0, 1},
        role = "RIGHT",
        width = 35, height = 32,
        psize = 14,
        poffset_x = 16, poffset_y = -14,
    },


    -- second row
    [SR1] = { --
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {0, 26/256, 0, 1},
        role = "LEFT",
        chainreset = true, toffset_x = 13, toffset_y = -20,
        width = 26, height = 32,
        psize = 14,
        poffset_x = 19, poffset_y = -14,
    },
    [SR2] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {26/256, 50/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [SR3] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {50/256, 74/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [SR4] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {74/256, 98/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [SR5] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {26/256, 50/256, 0, 1},
        role = "NORMAL",
        width = 24, height = 32,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },
    [SR6] = { -- the big one
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {98/256, 140/256, 0, 1},
        role = "BIG",
        width = 42, height = 32,
        psize = 18,
        poffset_x = 20, poffset_y = -14,
        bgeffect = true,
    },
    [SR7] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {196/256, 221/256, 0, 1},
        role = "NORMAL",
        width = 25, height = 32,
        toffset_x = -13, drawlayer = 1,
        psize = 14,
        poffset_x = 17, poffset_y = -14,
    },

    [SR8] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\ncbc_bg5",
        coords = {221/256, 1, 0, 1},
        role = "RIGHT",
        width = 35, height = 32,
        psize = 14,
        poffset_x = 16, poffset_y = -14,
    },

    ["bar"] = {
        texture = "Interface\\Addons\\NugComboBar\\tex\\UI-CastingBar-Border-Small",
        coords = {11/128, 92/128, 7/32, 24/32},
        width = 81, height = 17,
    },
}


function RotateTexture(coords, degrees)
        local l,r,t,b = unpack(coords)
        -- return { l, b, r, b, l, t, r, t }
        return { r, t, l, t, r, b, l, b }
end


local IsVertical = function()
    return NugComboBarDB.vertical
end



local mappings = {
    [2] = { 1, 6 },
    [3] = { 1, 2, 6 },
    [4] = { 1, 2, 3, 6 },
    [5] = { 1, 2, 3, 4, 6 },
    [6] = { 1, 2, 3, 4, 5, 6 },
    -- ["SHAMAN7"] = { 1, 2, 3, 4, 6, 7, 8 },
    -- ["SHAMAN5"] = { 1, 2, 3, 6, 7 },
    -- ["SHAMANDOUBLE"] = { 1, 2, 3, 4, 6, SR1, SR2, SR3, SR4, SR6},
    ["ROGUE53"] = { 1, 2, 3, 4, 6, SR1, SR2, SR8 },
    ["ROGUE63"] = { 1, 2, 3, 4, 5, 6, SR1, SR2, SR8 },
    ["ROGUE52"] = { 1, 2, 3, 4, 6, SR1, SR8 },
    ["ROGUE62"] = { 1, 2, 3, 4, 5, 6, SR1, SR8 },
    ["DKDOUBLE"] = { 1, 2, 6, SR1, SR2, SR8},
    ["PALADIN"] = { 1, 2, 6, 7, 8 },
    ["DEATHKNIGHT"] = { 1, 2, 6, 7, 4, 8 },
    ["4NO6"] = { 1, 2, 3, 8 },
    ["5NO6"] = { 1, 2, 3, 4, 8 },
    ["6NO6"] = { 1, 2, 3, 4, 5, 8 },
    ["MOONKIN"] = { 1, 2, 8, SR1, SR2, SR8 },
    ["FIREMAGE2"] = { 1, 2, 6, SR1, SR8 },
    ["FIREMAGE3"] = { 1, 2, 6, SR1, SR2, SR8 },
    ["FIREMAGE4"] = { 1, 2, 6, SR1, SR2, SR3, SR8 },
}
NugComboBar.mappings = mappings


function NugComboBar.MoveCharger(self, point)
    self.bar:ClearAllPoints()
    self.bar:SetPoint("TOP", point, "BOTTOM", 0,16)
    self.bar:SetWidth(29)
    self.bar:SetHeight(5)
end


function NugComboBar.SetMaxPoints(self, n, special, n2)
    -- n2 is second row length
    if NugComboBar.MAX_POINTS == n and NugComboBar.MAX_POINTS2 == n2 then return end
    NugComboBar.MAX_POINTS = n
    NugComboBar.MAX_POINTS2 = n2

    for _, point in pairs(self.point) do
        point:SetAlpha(0)
        point:Hide()
        point.bg:Hide()
        point.bg:ClearAllPoints()
    end

    local totalpoints = n + (n2 or 0)

    if NugComboBarDB.overrideLayout then
        local layout = NugComboBarDB.overrideLayout
        layout = tonumber(layout) or layout
        local customLayout = mappings[layout]
        if customLayout and #customLayout >= totalpoints then
            special = layout
        end
        -- if not customLayout then
            -- NugComboBarDB.overrideLayout = false -- remove override if it was deleted from skin settings
        -- end
    end

    self.point_map = mappings[special or n]
    -- print(special or n, self.point_map)

    local prevt
    local framesize = 0
    for i=1,totalpoints do
        local point = self.p[i]
        local popts = point.bg.settings
        local toffset_x = popts.toffset_x or 0
        local toffset_y = popts.toffset_y or 0
        point:Show()
        point.bg:Show()
        if i <= n then
            framesize = framesize + popts.width
        end
        if popts.chainreset then
            prevt = nil
            toffset_x = NugComboBarDB.bar2_x or toffset_x
            toffset_y = NugComboBarDB.bar2_y or toffset_y
        end
        if IsVertical() then
            point.bg:SetPoint("BOTTOMLEFT", prevt or self, prevt and "TOPLEFT" or "BOTTOMLEFT", -(toffset_y or 0), toffset_x or 0)
        else
            point.bg:SetPoint("TOPLEFT", prevt or self, prevt and "TOPRIGHT" or "TOPLEFT", toffset_x or 0, toffset_y or 0)
        end
        prevt = point.bg

        point:SetColor(unpack(NugComboBarDB.colors[i])) --+color_offset
        if i > n then
            if not (point:SetPreset(NugComboBarDB.preset3dpointbar2)) then
                NugComboBarDB.preset3dpointbar2 = NugComboBar.defaults.preset3dpointbar2
                point:SetPreset(NugComboBarDB.preset3dpointbar2)
            end
        else
            if not (point:SetPreset(NugComboBarDB.preset3d)) then
                NugComboBarDB.preset3d = NugComboBar.defaults.preset3d
                point:SetPreset(NugComboBarDB.preset3d)
            end
        end
    end
    self:SetWidth(framesize)
end


-------------------------
-- 2D Point
-------------------------
local SetColorFunc = function(self,r,g,b)
    self.t:SetVertexColor(r,g,b)
    if self.ani then self.ani.tex:SetVertexColor(r,g,b) end
end

function NugComboBar.Create2DPoint(self, id, opts)
    local size = opts.psize
    local tex = [[Interface\Addons\NugComboBar\tex\ncbc_point]]
    local f = CreateFrame("Frame","NugComboBarPoint"..id,self)
    f:SetHeight(size); f:SetWidth(size);

    local t1 = f:CreateTexture(nil,"ARTWORK")
    t1:SetTexture(tex)
    t1:SetAllPoints(f)
    f.t = t1

    local g2 = f:CreateTexture(nil,"OVERLAY")
    g2:SetHeight(size+3); g2:SetWidth(size+3);
    g2:SetTexture[[Interface\Addons\NugComboBar\tex\ncbc_point_shine]]
    g2:SetPoint("CENTER",f,"CENTER",3,2)

    g2:SetAlpha(0)

    local g2aag = g2:CreateAnimationGroup()
    local g2a = g2aag:CreateAnimation("Alpha")
    g2a:SetStartDelay(0.18)
    g2a:SetFromAlpha(1)
    g2a:SetToAlpha(1)
    g2a:SetDuration(0.3)
    g2a:SetOrder(1)
    local g2d = g2aag:CreateAnimation("Alpha")
    g2d:SetToAlpha(0)
    g2d:SetFromAlpha(1)
    g2d:SetDuration(0.4)
    g2d:SetOrder(2)
    --Required for 4.2
    g2aag:SetScript("OnFinished",function(self)
        self:GetParent():SetAlpha(0)
    end)

    f.glow2 = g2aag
    f.SetColor = SetColorFunc
    f.SetPreset = function() end

    return f
end

------------------------------
-- 3D Point (Model Frame Type)
------------------------------


-- This workaround waits 2 render passes, then calls :SetCamera(0) on all models that need it
local modelsToReset = {}
local nextrender_frame = CreateFrame("Frame")
local nextrender_counter = 2
local nextrender_func = function()
    if nextrender_counter > 0 then
        nextrender_counter = nextrender_counter - 1
        return
    end

    while next(modelsToReset) do
        local pm = next(modelsToReset)
        modelsToReset[pm] = nil
        -- print(pm:GetName(), "camera reset")
        if not pm.camera_reset then
            pm:SetModelScale(pm.model_scale)
        else
            -- pm:SetCamera(0)
            pm:SetTransform(unpack(pm.model_scale))
        end
    end
    nextrender_frame:SetScript("OnUpdate", nil)
    nextrender_counter = 2
end

nextrender_frame.enqueue = function(self, frame)
    modelsToReset[frame] = true
    nextrender_frame:SetScript("OnUpdate", nextrender_func)
    nextrender_counter = 5
end

nextrender_frame.dequeue = function(self, frame)
    modelsToReset[frame] = nil
end

local SetPresetFunc = function ( self, name, noreset )
    local ps = NugComboBar.presets[name]
    if not ps then return false end
    local role = self.bg.settings.role
    if role and not ps[role] then role = "NORMAL" end
    local settings = ps[role] or ps[self.id]
    local model, cameraReset, scale, ox, oy, oz, bgmodel, bgcameraReset, bgscale, bgox, bgoy, bgoz, doubleLayer = unpack(settings)

    self.currentPreset = name

    self.playermodel:Show()
    self.model:Hide()

    self.playermodel.model_path = model
    self.playermodel.model_scale = scale
    self.playermodel.ox = ox or 0
    self.playermodel.oy = oy or 0
    self.playermodel.oz = oz or 0
    self.playermodel.camera_reset = cameraReset

    self.playermodel:Redraw()

    if self.bgmodel then
        if bgmodel then
            if doubleLayer then
                local v = type(doubleLayer) == "number" and doubleLayer or 1
                self.bgmodel:SetScale(v)
                self.bgmodel:SetFrameLevel(1)
            else
                self.bgmodel:SetScale(2)
                self.bgmodel:SetFrameLevel(0)
            end

            self.bgmodel.model_path = bgmodel
            self.bgmodel.model_scale = bgscale
            self.bgmodel.ox = bgox or 0
            self.bgmodel.oy = bgoy or 0
            self.bgmodel.oz = bgoz or 0
            self.bgmodel.camera_reset = bgcameraReset

            self.bgmodel:Redraw()
            self.bgmodel:Show()
        else
            self.bgmodel:Hide()
        end
    end


    return true
end

local Redraw = function(self)
    -- print(self:GetName(), "Redraw")
    if not self.model_path then return end

    self:SetModelScale(1)
    self:ClearTransform()
    self:SetPosition(0,0,0)

    if type(self.model_path) == "number" then
        self:SetDisplayInfo(self.model_path)
    else
        self:SetModel(self.model_path)
    end
    self:SetModelScale(1)
    self:SetPosition(self.ox, self.oy, self.oz)

    nextrender_frame:enqueue(self)
    -- old method (pre 7.2):
    -- SetCamera(0) is a bugged function that was breaking model camera
    -- and was resetting it to default position, thus turning some effects to the bottom view
    -- new method:
    -- doesn't break camera, and all is good, but...
    -- All calls to SetModelScale before model was rendered do nothing.
    -- Regardless of scale value model will appear as if it was 1.
    -- And all following transformations will be relative to that value
    -- So that's why model scale initially should be 1, and only after it was loaded it should be scaled.
    -- if self.camera_reset then
        -- self:SetCamera(0)
    -- else
        -- self:RefreshCamera()
    -- end
end

local ResetTransformations = function(self)
    -- print(self:GetName(), "hiding", self:GetCameraDistance(), self:GetCameraPosition())
    self:SetModelScale(1)
    self:SetPosition(0,0,0)
    self:ClearTransform()
end
NugComboBar.Redraw = Redraw
NugComboBar.ResetTransformations = ResetTransformations

local SetColor3DFunc = function(self, r,g,b, force)
    local enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB
    if NugComboBarDB.colors3d or force then
        enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB = true, false, 0, 1, 0, 1, r,g,b, 1, r,g,b
    else
        enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB = true, false, 0, 1, 0, 1, 0.69999, 0.69999, 0.69999, 1, 0.8, 0.8, 0.63999
    end
    -- self.model:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )
    self.playermodel:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )
    self.bgmodel:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )
end

function NugComboBar.Create3DPoint(self, id, opts)
    local size = 64
    local f = CreateFrame("Frame","NugComboBarPoint"..id,self)
    f:SetHeight(size); f:SetWidth(size);

    -- :SetLight( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 );
    local enabled, omni, dirX, dirY, dirZ,
          ambIntensity, ambR, ambG, ambB,
          dirIntensity, dirR, dirG, dirB = true, false, 0, 1, 0, 1, 0.69999, 0.69999, 0.69999, 1, 0.8, 0.8, 0.63999
          -- dirIntensity, dirR, dirG, dirB = 1, 0, 0, 1, 0, 1, 1.0, 0.0, 0.0, 1, 1.0, 1.0, 1.0


    local pm = CreateFrame("PlayerModel","NugComboBarPointPlayerModel"..id,f)
    pm:SetFrameLevel(2)
    pm:SetAllPoints(f)
    pm:SetFrameLevel(3)

    pm:SetModel("spells\\gouge_precast_state_hand.m2")
    pm:SetModelScale(1)
    pm:SetPosition(0,0,0)
    -- pm:SetScript("OnUpdateModel", function() print("PM model update")     end)
    pm:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )

    local m = CreateFrame("Model","NugComboBarPointModel"..id,f)
    m:SetFrameLevel(2)
    -- pm:SetScript("OnUpdateModel", function() print("M model update") end)
    m:SetAllPoints(f)
    m:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )

    f.playermodel = pm
    f.model = m

    -- When PlayerFrame gets hidden, like during cutscenes or when map is opened, it will disappear
    -- For it to appear, it needs to be loaded again. But at that moment all previous
    -- transformations will "freeze" and fuck up all future transformations
    f.playermodel:SetScript("OnHide", ResetTransformations)
    f.playermodel:SetScript("OnShow", Redraw)
    f.playermodel.Redraw = Redraw
    f.playermodel.ResetTransformations = ResetTransformations


    -- hooksecurefunc(WorldMapFrame, "Hide", ReShowModels);
    -- local movieWatchFrame = CreateFrame("Frame");
    -- movieWatchFrame:RegisterEvent("PLAY_MOVIE");
    -- movieWatchFrame:SetScript("OnEvent", ReShowModels);

    -- if opts.bgeffect then
        local bgm = CreateFrame("PlayerModel","NugComboBarPointBGModel"..id,f)
        bgm:SetFrameLevel(0)
        bgm:SetWidth(size)
        bgm:SetHeight(size)
        bgm:SetScale(2)
        bgm:SetPoint("CENTER", f, "CENTER", 0, 0)
        bgm:SetLight(enabled, omni, dirX, dirY, dirZ, ambIntensity, ambR, ambG, ambB, dirIntensity, dirR, dirG, dirB )
        f.bgmodel = bgm

        f.bgmodel:SetScript("OnHide", ResetTransformations)
        f.bgmodel:SetScript("OnShow", Redraw)
        f.bgmodel.Redraw = Redraw
        f.bgmodel.ResetTransformations = ResetTransformations
    -- end


    -- local backdrop = {
    --     bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    --     tile = true, tileSize = 0,
    --     insets = {left = 0, right = 0, top = 0, bottom = 0},
    -- }
    -- f:SetBackdrop(backdrop)
    -- f:SetBackdropColor(0, 0, 0, 0.7)

    f.SetColor = SetColor3DFunc
    f.SetPreset = SetPresetFunc

    return f
end

local CreateTextureBar = function(self)
    local bar = CreateFrame("StatusBar",nil, self)
    bar:SetWidth(38); bar:SetHeight(5)
    bar:SetStatusBarTexture([[Interface\TargetingFrame\UI-StatusBar]], "ARTWORK")
    bar:SetMinMaxValues(0,100)
    bar:SetValue(50)
    --
    local barbg = bar:CreateTexture(nil, "BACKGROUND", nil, 3)
    barbg:SetTexture[[Interface\TargetingFrame\UI-StatusBar]]
    barbg:SetVertexColor(0,0,0)
    barbg:SetAllPoints(bar)
    bar.bg = barbg

    local tb = bar:CreateTexture(nil, "ARTWORK", nil, 1)
    tb:SetWidth(60); tb:SetHeight(24)
    tb:SetTexture[[Interface\Addons\NugComboBar\tex\bar2.tga]]
    tb:SetTexCoord(0/128, 60/128, 0/64, 24/64)
    tb:SetPoint("TOPLEFT", bar, "TOPLEFT", -8, 6)

    bar.SetColor = function(self, r,g,b)
        self:SetStatusBarColor(r,g,b)
        self.bg:SetVertexColor(r*.3,g*.3,b*.3)
    end

    return bar
end


local CreatePixelBar = function(self)
    local bar = CreateFrame("StatusBar",nil, self)
    --
    -- local current = GetCurrentResolution()
    -- if not current then return end
    -- local resolutions = { GetScreenResolutions() }
    -- local res = resolutions[current]
    -- if not res then return end

    -- local w,h = string.match(res, "(%d+)x(%d+)")
    -- local p = (GetScreenHeight()/h) / UIParent:GetScale()
    local p = 1
    -- p = math.floor(p*100)/100
    -- print("pixel len", p)

    -- bar.SetScale1 = bar.SetScale
    -- bar.SetScale = function(self, scale)
    --     self:SetScale1(UIParent:GetScale()*scale)
    -- end
    -- bar:SetScale(1)


    bar:SetWidth(45); bar:SetHeight(4)
    bar:SetStatusBarTexture([[Interface\Addons\NugComboBar\tex\white]], "ARTWORK")
    bar:SetMinMaxValues(0,100)
    bar:SetValue(50)
    --
    local barbg = bar:CreateTexture(nil, "BACKGROUND", nil, 3)


    barbg:SetTexture[[Interface\Addons\NugComboBar\tex\white]]
    barbg:SetVertexColor(0,0,0)
    barbg:SetAllPoints(bar)
    -- barbg:SetPoint("TOPLEFT", bar, "TOPLEFT", 0, 0)
    -- barbg:SetHeight(1)
    -- barbg:SetPoint("BOTTOMLEFT", bar, "BOTTOMLEFT", 0, 0)
    -- barbg:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 0, 0)
    bar.bg = barbg
    --
    -- /dump NugComboBar.bar:Show()
    local backdrop = {
        bgFile = [[Interface\Addons\NugComboBar\tex\white]],
        tile = true, tileSize = 0,
        insets = {left = -1, right = -1, top = -1, bottom = -1},
    }
    -- print("p=", p)
    bar:SetBackdrop(backdrop)
    bar:SetBackdropColor(0, 0, 0, 1)

    bar.SetColor = function(self, r,g,b)
        self:SetStatusBarColor(r,g,b)
        self.bg:SetVertexColor(r*0.3,g*0.3,b*0.3)
        self:SetBackdropColor(0,0,0,1)
    end

    bar:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 14*p, 0)
    -- bar:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 80, -35)

    return bar
end
NugComboBar.CreatePixelBar = CreatePixelBar

-- local cdOnUpdate = function(self,time)
--     self._elapsed = self._elapsed + time
--     if self._elapsed < 0.03 then return end
--     self._elapsed = 0

--     local t = self.texture
--     local progress = (GetTime() - self.start)/self.duration
--     if progress > 1 then progress = 1 end
--     if progress < 0 then progress = 0 end
--     print(progress)
--     t:SetRotation(math.rad(-360*progress))

--     -- print(progress)
--     if progress == 1 then
--         self:SetScript("OnUpdate", nil)
--         self:Hide()
--     -- else
--         -- t:Show()
--     end
-- end

NugComboBar.Create = function(self)
    NugComboBar:IsDefaultSkin(true)

    self:SetFrameStrata("MEDIUM")
    if IsVertical() then
        self:SetWidth(32)
        self:SetHeight(164)
    else
        self:SetWidth(164)
        self:SetHeight(32)
    end

    local initial = not _G["NugComboBarBackgroundTexture1"]

    local is3D = NugComboBarDB.enable3d

    if initial then
        self.point = self.point or {}
        self.point_map = mappings[6]
        self.p = setmetatable({}, { __index = function(t,k)
            if self.point_map then  --weird error when zoning out of timewalking dungeon
                return self.point[self.point_map[k]]
            else
                return nil
            end
        end})
    end

    local prevt
    for i=1,#pointtex do
        local ts = pointtex[i]
        local t = _G["NugComboBarBackgroundTexture"..i] or
                    self:CreateTexture("NugComboBarBackgroundTexture"..i,"BACKGROUND",nil, ts.drawlayer)
        t:SetTexture(ts.texture)
        local coords = IsVertical() and RotateTexture(ts.coords) or ts.coords
        t:SetTexCoord(unpack(coords))
        if ts.chainreset then prevt = nil end
        if IsVertical() then
            t:SetPoint("BOTTOMLEFT", prevt or self, prevt and "TOPLEFT" or "BOTTOMLEFT", -(ts.toffset_y or 0), ts.toffset_x or 0)
        else
            t:SetPoint("TOPLEFT", prevt or self, prevt and "TOPRIGHT" or "TOPLEFT", ts.toffset_x or 0, ts.toffset_y or 0)
        end
        --t:SetPoint("BOTTOMRIGHT", prevt or self, prevt and "BOTTOMRIGHT" or "BOTTOMLEFT", ts.width, ts.height)
        if IsVertical() then
            t:SetWidth(ts.height)
            t:SetHeight(ts.width)
        else
            t:SetWidth(ts.width)
            t:SetHeight(ts.height)
        end
        t.settings = ts
        prevt = t

        local f = self.point[i] or
                  (is3D  and self:Create3DPoint(i, ts) or self:Create2DPoint(i, ts))
        -- if is3D then
            -- ts.poffset_x = ts.poffset_x
            -- ts.poffset_y = ts.poffset_y
        -- end
        -- if not f.cd then

        --     local cd = CreateFrame("Cooldown", nil, self)
        --     local role = ts.role
        --     -- cd:SetHeight(22);
        --     -- cd:SetWidth(22);
        --     cd:SetHeight(28);
        --     cd:SetWidth(28);
        --     if role == "BIG" then
        --         cd:SetHeight(35)
        --         cd:SetWidth(35)
        --     end
        --     cd:SetSwipeTexture([[Interface\AddOns\NugComboBar\tex\SwipeCircleFat.tga]])
        --     cd:SetFrameStrata("MEDIUM")
        --     cd:SetSwipeColor(1,.5,1, 0.4)
        --     cd:SetHideCountdownNumbers(true)
        --     cd.noCooldownCount = true
        --     cd:SetPoint("CENTER", f, "CENTER", 0, 0)
        --     cd:Show()

        --     f.cd = cd
        -- end

        f:SetAlpha(0)
        if IsVertical() then
            f:SetPoint("CENTER", t, "BOTTOMLEFT", -ts.poffset_y, ts.poffset_x)
        else
            f:SetPoint("CENTER", t, "TOPLEFT", ts.poffset_x, ts.poffset_y)
        end

        f.bg = t
        f.id = i
        self.point[i] = f

        if initial then
            local aag = f:CreateAnimationGroup()
            f.aag = aag
            local a1 = aag:CreateAnimation("Alpha")
            a1:SetFromAlpha(0)
            a1:SetToAlpha(1)
            a1:SetDuration(0.3)
            a1:SetOrder(1)
            aag:SetScript("OnFinished",function(self)
                self:GetParent():SetAlpha(1)
            end)

            local dag = f:CreateAnimationGroup()
            f.dag = dag
            local d1 = dag:CreateAnimation("Alpha")
            d1:SetFromAlpha(1)
            d1:SetToAlpha(0)
            d1:SetDuration(0.5)
            d1:SetOrder(1)
            dag:SetScript("OnFinished",function(self)
                self:GetParent():SetAlpha(0)
            end)


            local rag = f:CreateAnimationGroup()
            f.rag = rag
            local r1 = rag:CreateAnimation("Alpha")
            r1:SetFromAlpha(1)
            r1:SetToAlpha(0.3)
            r1:SetDuration(0.20)
            r1:SetOrder(1)
            r1:SetScript("OnFinished", function(self)
                local p = self:GetParent():GetParent()
                p:ragfunc(p.ragfuncarg)
            end)
            local r2 = rag:CreateAnimation("Alpha")
            r2:SetFromAlpha(0.3)
            r2:SetToAlpha(1)
            r2:SetDuration(0.40)
            r2:SetOrder(2)
            rag:SetScript("OnFinished",function(self)
                self:GetParent():SetAlpha(1)
            end)
            rag.r1 = r1
            rag.r2 = r2
            rag.SetSpeed = function(self, mul)
                self.r1:SetDuration(0.20*mul)
                self.r2:SetDuration(0.40*mul)
            end

        end

        f.Activate = ActivateFunc
        f.Deactivate = DeactivateFunc
        f.Reappear = ReappearFunc
    end

    local bar = self.bar
    if initial then
        if not bar then
            bar = CreatePixelBar(self)
            self.bar = bar
        end


        -- if not IsVertical() then --only shows bar in horizontal
            -- bar:SetPoint("BOTTOMLEFT", NugComboBar, "TOPLEFT", 14, 0)
        -- else
            -- bar:SetPoint("BOTTOMRIGHT", NugComboBar, "BOTTOMLEFT", 0, 14)
        -- end


        -- local cd = CreateFrame("Frame", nil, self)
        -- cd:SetHeight(64); cd:SetWidth(64);
        -- local cdt = cd:CreateTexture(nil, "ARTWORK", nil, 3)
        -- cdt:SetTexture([[Interface\Addons\NugComboBar\tex\chargeArrow]])
        -- cdt:SetBlendMode("ADD")
        -- cdt:SetAllPoints(cd)
        -- cd.texture = cdt

        -- local f = self.point[6]

        -- cd:SetPoint("CENTER", f, "CENTER",0,0)

        -- cdt:SetVertexColor(1,0,0, 1)

        -- cd.SetSwipeColor = function() end
        -- cd.SetParent = function() end

        -- cd._elapsed = 0
        -- -- /script NugComboBar.p[2].cd:SetCooldown(GetTime(), 10); NugComboBar.p[2].cd:Show()
        -- cd.SetCooldown = function(self, start, duration)
        --     self.start = start
        --     self.duration = duration
        --     self:SetScript("OnUpdate", cdOnUpdate)
        --     self:Show()
        -- end

        -- self.charger = cd

    end --endif intiial


    -- local tb = bar:CreateTexture(nil, "BACKGROUND", nil, 1)
    -- tb:SetWidth(ts.width); tb:SetHeight(ts.height)
    -- tb:SetTexture(ts.texture)
    -- tb:SetTexCoord(unpack(ts.coords))
    -- tb:SetPoint("TOPLEFT", bar, "TOPLEFT", -5, 4)

    -- bar:Small()
    -- bar.t = tb
    if bar then bar:Hide() end


    return self
end



NugComboBar.themes = {}
NugComboBar.themes["WARLOCK"] = {
    [0] = {
        preset3d = "glowPurple2",
        colors = {
            normal = { 0.5, 0.5 , 1 },
            ["bar1"] = { 0.6, 0, 1 },
        },
    },
}

NugComboBar.themes["PALADIN"] = {
    [0] = {
        preset3d = "glowHoly",
    }
}

NugComboBar.themes["SHAMAN"] = {
    [0] = {
        preset3d = "chiBlastBlue",
    }
}

NugComboBar.themes["MONK"] = {
    [0] = {
        preset3d = "glowBlue",
        colors = {
            normal = { 0, 0.73, 0.27 },
            ["bar1"] = { 0, 0.66, 0.43 },
        },
    },
}

NugComboBar.themes["ROGUE"] = {
    [0] = {
        preset3d = "glowPurple2",
        colors = {
            normal = {0.77,0.26,0.29},
            ["bar1"] = { 0.6, 0, 1 },
        },
    },
    [3] ={
        preset3d = "glowPurple2",
        preset3dpointbar2 = "void",
        colors = {
            normal = {0.77,0.26,0.29},
            ["bar1"] = { 0.6, 0, 1 },
        },
    }
}

NugComboBar.themes["MAGE"] = {
    [0] = {
        preset3d = "glowPurple",
    },
    [1] ={
        preset3d = "arcanePink",
    },
    [2] ={
        preset3d = "furnace",
        preset3dpointbar2 = "glowOrange",
    },
    [3] = {
        preset3d = "glowBlue",
        colors = {
            normal = { 0.36, 0.69, 0.76 },
        },
    }
}


NugComboBar.themes["WARRIOR"] = {
    [0] = {
        preset3d = "glowOrange",
    },
}

NugComboBar.themes["DEATHKNIGHT"] = {
    [0] = {
        preset3d = "glowFreedom",
        colors = {
            normal = {0.77,0.26,0.29},
            -- normal = {0.15,0.80,0.48},
            [3] = {1, 0, 0},
        }
    },
}
