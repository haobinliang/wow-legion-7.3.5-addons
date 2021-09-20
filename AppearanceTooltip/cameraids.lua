local myname, ns = ...

local races = {
    [1] = "Human",
    [3] = "Dwarf",
    [4] = "NightElf",
    [11] = "Draenei",
    [22] = "Worgen",
    [7] = "Gnome",
    [24] = "Pandaren",
    [2] = "Orc",
    [5] = "Scourge",
    [10] = "BloodElf",
    [8] = "Troll",
    [6] = "Tauren",
    [9] = "Goblin",
}
local genders = {
    [0] = "Male",
    [1] = "Female",
}

local slots = {
    INVTYPE_BODY = "Shirt",
    INVTYPE_CHEST = "Chest", -- the game files call this one "shirt" too, but...
    INVTYPE_CLOAK = "Back",
    INVTYPE_FEET = "Feet",
    INVTYPE_HAND = "Hands",
    INVTYPE_HEAD = "Head",
    INVTYPE_LEGS = "Legs",
    INVTYPE_ROBE = "Robe",
    INVTYPE_SHOULDER = "Shoulder",
    -- INVTYPE_SHOULDER = "Shoulder-Alt",
    INVTYPE_TABARD = "Tabard",
    INVTYPE_WAIST = "Waist",
    INVTYPE_WRIST = "Wrist",
}
local item_slots = {
    INVTYPE_2HWEAPON = true,
    INVTYPE_WEAPON = true,
    INVTYPE_WEAPONMAINHAND = true,
    INVTYPE_WEAPONOFFHAND = true,
    INVTYPE_RANGED = true,
    INVTYPE_RANGEDRIGHT = true,
    INVTYPE_HOLDABLE = "Offhand",
    INVTYPE_SHIELD = "Shield",
}
local subclasses = {
    [LE_ITEM_WEAPON_DAGGER] = "Dagger",
    [LE_ITEM_WEAPON_UNARMED] = "FistWeapon",
    [LE_ITEM_WEAPON_AXE1H] = "1HAxe",
    [LE_ITEM_WEAPON_MACE1H] = "1HMace",
    [LE_ITEM_WEAPON_SWORD1H] = "1HSword",
    [LE_ITEM_WEAPON_AXE2H] = "2HAxe",
    [LE_ITEM_WEAPON_MACE2H] = "2HMace",
    [LE_ITEM_WEAPON_SWORD2H] = "2HSword",
    [LE_ITEM_WEAPON_POLEARM] = "Polearm",
    [LE_ITEM_WEAPON_STAFF] = "Staff",
    [LE_ITEM_WEAPON_WARGLAIVE] = "Glaive",
    [LE_ITEM_WEAPON_BOWS] = "Bow",
    [LE_ITEM_WEAPON_CROSSBOW] = "Crossbow",
    [LE_ITEM_WEAPON_GUNS] = "Gun",
    [LE_ITEM_WEAPON_WAND] = "Wand",
    -- Fallbacks
    [LE_ITEM_WEAPON_FISHINGPOLE] = "Staff",
    [LE_ITEM_WEAPON_GENERIC] = "1HSword",
}

local _, playerRace = UnitRace("player")
local playerSex
if UnitSex("player") == 2 then
    playerSex = "Male";
else
    playerSex = "Female";
end

local slots_to_cameraids, slot_override

-- Get a cameraid for Model_ApplyUICamera which will focus a DressUpModel on a specific item
-- itemid: number/string Anything that GetItemInfoInstant will accept
-- race: number raceid
-- gender: number genderid (0: male, 1: female)
function ns:GetCameraID(itemid, race, gender)
    local key, itemcamera
    local itemid, _, _, slot, _, class, subclass = GetItemInfoInstant(itemid)
    if item_slots[slot] then
        itemcamera = true
        if item_slots[slot] == true then
            key = "Weapon-" .. subclasses[subclass]
        else
            key = "Weapon-" .. item_slots[slot]
        end
    else
        race = races[race]
        gender = genders[gender]
        if not race then
            race = playerRace
            if race == 'Worgen' and select(2, HasAlternateForm()) then
                race = 'Human'
            end
        end
        if not gender then
            gender = playerSex
        end
        key = ("%s-%s-%s"):format(race, gender, slot_override[itemid] or slots[slot] or "Default")
    end
    -- ns.Debug("GetCameraID", key, slots_to_cameraids[key], itemcamera)
    return slots_to_cameraids[key], itemcamera
end

slots_to_cameraids = {
    ["Weapon-1HSword"] = 238,
    ["Weapon-2HSword"] = 239,
    ["Weapon-Wand"] = 240,
    ["Weapon-Dagger"] = 241,
    ["Weapon-1HAxe"] = 242,
    ["Weapon-2HAxe"] = 243,
    ["Weapon-1HMace"] = 244,
    ["Weapon-2HMace"] = 245,
    ["Weapon-Staff"] = 246,
    ["Weapon-Polearm"] = 247,
    ["Weapon-Glaive"] = 624,
    ["Weapon-FistWeapon"] = 248,
    ["Weapon-Shield"] = 249,
    ["Weapon-Offhand"] = 250,
    ["Weapon-Bow"] = 251,
    ["Weapon-Gun"] = 252,
    ["Weapon-Crossbow"] = 253,
    --
    ["BloodElf-Female-Back"] = 467,
    ["BloodElf-Female-Feet"] = 475,
    ["BloodElf-Female-Hands"] = 472,
    ["BloodElf-Female-Head"] = 465,
    ["BloodElf-Female-Legs"] = 474,
    ["BloodElf-Female-Robe"] = 468,
    ["BloodElf-Female-Chest"] = 469,
    ["BloodElf-Female-Shirt"] = 469,
    ["BloodElf-Female-Shoulder"] = 466,
    ["BloodElf-Female-Shoulder-Alt"] = 739,
    ["BloodElf-Female-Tabard"] = 470,
    ["BloodElf-Female-Waist"] = 473,
    ["BloodElf-Female-Wrist"] = 471,
    ["BloodElf-Male-Back"] = 456,
    ["BloodElf-Male-Feet"] = 464,
    ["BloodElf-Male-Hands"] = 461,
    ["BloodElf-Male-Head"] = 454,
    ["BloodElf-Male-Legs"] = 463,
    ["BloodElf-Male-Robe"] = 457,
    ["BloodElf-Male-Chest"] = 458,
    ["BloodElf-Male-Shirt"] = 458,
    ["BloodElf-Male-Shoulder"] = 455,
    ["BloodElf-Male-Shoulder-Alt"] = 738,
    ["BloodElf-Male-Tabard"] = 459,
    ["BloodElf-Male-Waist"] = 462,
    ["BloodElf-Male-Wrist"] = 460,
    ["Draenei-Female-Back"] = 345,
    ["Draenei-Female-Feet"] = 358,
    ["Draenei-Female-Hands"] = 352,
    ["Draenei-Female-Head"] = 342,
    ["Draenei-Female-Legs"] = 356,
    ["Draenei-Female-Robe"] = 347,
    ["Draenei-Female-Chest"] = 348,
    ["Draenei-Female-Shirt"] = 348,
    ["Draenei-Female-Shoulder"] = 343,
    ["Draenei-Female-Shoulder-Alt"] = 730,
    ["Draenei-Female-Tabard"] = 349,
    ["Draenei-Female-Waist"] = 355,
    ["Draenei-Female-Wrist"] = 350,
    ["Draenei-Male-Back"] = 333,
    ["Draenei-Male-Chest"] = 677,
    ["Draenei-Male-Feet"] = 341,
    ["Draenei-Male-Hands"] = 338,
    ["Draenei-Male-Head"] = 331,
    ["Draenei-Male-Legs"] = 340,
    ["Draenei-Male-Robe"] = 334,
    ["Draenei-Male-Chest"] = 335,
    ["Draenei-Male-Shirt"] = 335,
    ["Draenei-Male-Shoulder"] = 332,
    ["Draenei-Male-Shoulder-Alt"] = 729,
    ["Draenei-Male-Tabard"] = 336,
    ["Draenei-Male-Waist"] = 339,
    ["Draenei-Male-Wrist"] = 337,
    ["Dwarf-Female-Back"] = 376,
    ["Dwarf-Female-Feet"] = 384,
    ["Dwarf-Female-Hands"] = 381,
    ["Dwarf-Female-Head"] = 374,
    ["Dwarf-Female-Legs"] = 383,
    ["Dwarf-Female-Robe"] = 377,
    ["Dwarf-Female-Chest"] = 378,
    ["Dwarf-Female-Shirt"] = 378,
    ["Dwarf-Female-Shoulder"] = 375,
    ["Dwarf-Female-Shoulder-Alt"] = 809,
    ["Dwarf-Female-Tabard"] = 379,
    ["Dwarf-Female-Waist"] = 382,
    ["Dwarf-Female-Wrist"] = 380,
    ["Dwarf-Male-Back"] = 365,
    ["Dwarf-Male-Feet"] = 373,
    ["Dwarf-Male-Hands"] = 370,
    ["Dwarf-Male-Head"] = 363,
    ["Dwarf-Male-Legs"] = 372,
    ["Dwarf-Male-Robe"] = 366,
    ["Dwarf-Male-Chest"] = 367,
    ["Dwarf-Male-Shirt"] = 367,
    ["Dwarf-Male-Shoulder"] = 364,
    ["Dwarf-Male-Shoulder-Alt"] = 731,
    ["Dwarf-Male-Tabard"] = 368,
    ["Dwarf-Male-Waist"] = 371,
    ["Dwarf-Male-Wrist"] = 369,
    ["Gnome-Female-Back"] = 401,
    ["Gnome-Female-Feet"] = 409,
    ["Gnome-Female-Hands"] = 406,
    ["Gnome-Female-Head"] = 399,
    ["Gnome-Female-Legs"] = 408,
    ["Gnome-Female-Robe"] = 402,
    ["Gnome-Female-Chest"] = 403,
    ["Gnome-Female-Shirt"] = 403,
    ["Gnome-Female-Shoulder"] = 400,
    ["Gnome-Female-Shoulder-Alt"] = 733,
    ["Gnome-Female-Tabard"] = 404,
    ["Gnome-Female-Waist"] = 407,
    ["Gnome-Female-Wrist"] = 405,
    ["Gnome-Male-Back"] = 387,
    ["Gnome-Male-Feet"] = 398,
    ["Gnome-Male-Hands"] = 395,
    ["Gnome-Male-Head"] = 385,
    ["Gnome-Male-Legs"] = 397,
    ["Gnome-Male-Robe"] = 389,
    ["Gnome-Male-Chest"] = 390,
    ["Gnome-Male-Shirt"] = 390,
    ["Gnome-Male-Shoulder"] = 386,
    ["Gnome-Male-Shoulder-Alt"] = 732,
    ["Gnome-Male-Tabard"] = 393,
    ["Gnome-Male-Waist"] = 396,
    ["Gnome-Male-Wrist"] = 394,
    ["Goblin-Female-Back"] = 445,
    ["Goblin-Female-Feet"] = 453,
    ["Goblin-Female-Hands"] = 450,
    ["Goblin-Female-Head"] = 443,
    ["Goblin-Female-Legs"] = 452,
    ["Goblin-Female-Robe"] = 446,
    ["Goblin-Female-Chest"] = 447,
    ["Goblin-Female-Shirt"] = 447,
    ["Goblin-Female-Shoulder"] = 444,
    ["Goblin-Female-Shoulder-Alt"] = 737,
    ["Goblin-Female-Tabard"] = 448,
    ["Goblin-Female-Waist"] = 451,
    ["Goblin-Female-Wrist"] = 449,
    ["Goblin-Male-Back"] = 434,
    ["Goblin-Male-Feet"] = 442,
    ["Goblin-Male-Hands"] = 439,
    ["Goblin-Male-Head"] = 432,
    ["Goblin-Male-Legs"] = 441,
    ["Goblin-Male-Robe"] = 435,
    ["Goblin-Male-Chest"] = 436,
    ["Goblin-Male-Shirt"] = 436,
    ["Goblin-Male-Shoulder"] = 433,
    ["Goblin-Male-Shoulder-Alt"] = 736,
    ["Goblin-Male-Tabard"] = 437,
    ["Goblin-Male-Waist"] = 440,
    ["Goblin-Male-Wrist"] = 438,
    ["Human-Female-Back"] = 276,
    ["Human-Female-Feet"] = 284,
    ["Human-Female-Hands"] = 281,
    ["Human-Female-Head"] = 274,
    ["Human-Female-Legs"] = 283,
    ["Human-Female-Robe"] = 277,
    ["Human-Female-Chest"] = 278,
    ["Human-Female-Shirt"] = 278,
    ["Human-Female-Shoulder"] = 275,
    ["Human-Female-Shoulder-Alt"] = 724,
    ["Human-Female-Tabard"] = 279,
    ["Human-Female-Waist"] = 282,
    ["Human-Female-Wrist"] = 280,
    ["Human-Male-Back"] = 235,
    ["Human-Male-Chest"] = 674,
    ["Human-Male-Feet"] = 227,
    ["Human-Male-Hands"] = 226,
    ["Human-Male-Head"] = 236,
    ["Human-Male-Legs"] = 228,
    ["Human-Male-Robe"] = 225,
    ["Human-Male-Shirt"] = 229,
    ["Human-Male-Shoulder"] = 221,
    ["Human-Male-Shoulder-Alt"] = 723,
    ["Human-Male-Tabard"] = 230,
    ["Human-Male-Waist"] = 234,
    ["Human-Male-Wrist"] = 237,
    ["NightElf-Female-Back"] = 423,
    ["NightElf-Female-Feet"] = 431,
    ["NightElf-Female-Hands"] = 428,
    ["NightElf-Female-Head"] = 421,
    ["NightElf-Female-Legs"] = 430,
    ["NightElf-Female-Robe"] = 424,
    ["NightElf-Female-Shirt"] = 425,
    ["NightElf-Female-Chest"] = 425,
    ["NightElf-Female-Shoulder"] = 422,
    ["NightElf-Female-Shoulder-Alt"] = 735,
    ["NightElf-Female-Tabard"] = 426,
    ["NightElf-Female-Waist"] = 429,
    ["NightElf-Female-Wrist"] = 427,
    ["NightElf-Male-Back"] = 412,
    ["NightElf-Male-Feet"] = 420,
    ["NightElf-Male-Hands"] = 417,
    ["NightElf-Male-Head"] = 410,
    ["NightElf-Male-Legs"] = 419,
    ["NightElf-Male-Robe"] = 413,
    ["NightElf-Male-Chest"] = 414,
    ["NightElf-Male-Shirt"] = 414,
    ["NightElf-Male-Shoulder"] = 411,
    ["NightElf-Male-Shoulder-Alt"] = 734,
    ["NightElf-Male-Tabard"] = 415,
    ["NightElf-Male-Waist"] = 418,
    ["NightElf-Male-Wrist"] = 416,
    ["Orc-Female-Back"] = 489,
    ["Orc-Female-Feet"] = 497,
    ["Orc-Female-Hands"] = 494,
    ["Orc-Female-Head"] = 487,
    ["Orc-Female-Legs"] = 496,
    ["Orc-Female-Robe"] = 490,
    ["Orc-Female-Chest"] = 491,
    ["Orc-Female-Shirt"] = 491,
    ["Orc-Female-Shoulder"] = 488,
    ["Orc-Female-Shoulder-Alt"] = 741,
    ["Orc-Female-Tabard"] = 492,
    ["Orc-Female-Waist"] = 495,
    ["Orc-Female-Wrist"] = 493,
    ["Orc-Male-Back"] = 478,
    ["Orc-Male-Feet"] = 486,
    ["Orc-Male-Hands"] = 483,
    ["Orc-Male-Head"] = 476,
    ["Orc-Male-Legs"] = 485,
    ["Orc-Male-Robe"] = 479,
    ["Orc-Male-Chest"] = 480,
    ["Orc-Male-Shirt"] = 480,
    ["Orc-Male-Shoulder"] = 477,
    ["Orc-Male-Shoulder-Alt"] = 740,
    ["Orc-Male-Tabard"] = 481,
    ["Orc-Male-Waist"] = 484,
    ["Orc-Male-Wrist"] = 482,
    ["Pandaren-Female-Back"] = 300,
    ["Pandaren-Female-Chest"] = 676,
    ["Pandaren-Female-Feet"] = 308,
    ["Pandaren-Female-Hands"] = 305,
    ["Pandaren-Female-Head"] = 298,
    ["Pandaren-Female-Legs"] = 307,
    ["Pandaren-Female-Robe"] = 301,
    ["Pandaren-Female-Shirt"] = 302,
    ["Pandaren-Female-Shoulder"] = 299,
    ["Pandaren-Female-Shoulder-Alt"] = 726,
    ["Pandaren-Female-Tabard"] = 303,
    ["Pandaren-Female-Waist"] = 306,
    ["Pandaren-Female-Wrist"] = 304,
    ["Pandaren-Male-Back"] = 287,
    ["Pandaren-Male-Chest"] = 675,
    ["Pandaren-Male-Feet"] = 295,
    ["Pandaren-Male-Hands"] = 292,
    ["Pandaren-Male-Head"] = 285,
    ["Pandaren-Male-Legs"] = 294,
    ["Pandaren-Male-Robe"] = 288,
    ["Pandaren-Male-Shirt"] = 289,
    ["Pandaren-Male-Shoulder"] = 286,
    ["Pandaren-Male-Shoulder-Alt"] = 725,
    ["Pandaren-Male-Tabard"] = 290,
    ["Pandaren-Male-Waist"] = 293,
    ["Pandaren-Male-Wrist"] = 291,
    ["Tauren-Female-Back"] = 511,
    ["Tauren-Female-Feet"] = 519,
    ["Tauren-Female-Hands"] = 516,
    ["Tauren-Female-Head"] = 509,
    ["Tauren-Female-Legs"] = 518,
    ["Tauren-Female-Robe"] = 512,
    ["Tauren-Female-Chest"] = 513,
    ["Tauren-Female-Shirt"] = 513,
    ["Tauren-Female-Shoulder"] = 510,
    ["Tauren-Female-Shoulder-Alt"] = 743,
    ["Tauren-Female-Tabard"] = 514,
    ["Tauren-Female-Waist"] = 517,
    ["Tauren-Female-Wrist"] = 515,
    ["Tauren-Male-Back"] = 500,
    ["Tauren-Male-Feet"] = 508,
    ["Tauren-Male-Hands"] = 505,
    ["Tauren-Male-Head"] = 498,
    ["Tauren-Male-Legs"] = 507,
    ["Tauren-Male-Robe"] = 501,
    ["Tauren-Male-Chest"] = 502,
    ["Tauren-Male-Shirt"] = 502,
    ["Tauren-Male-Shoulder"] = 499,
    ["Tauren-Male-Shoulder-Alt"] = 742,
    ["Tauren-Male-Tabard"] = 503,
    ["Tauren-Male-Waist"] = 506,
    ["Tauren-Male-Wrist"] = 504,
    ["Troll-Female-Back"] = 533,
    ["Troll-Female-Feet"] = 541,
    ["Troll-Female-Hands"] = 538,
    ["Troll-Female-Head"] = 531,
    ["Troll-Female-Legs"] = 540,
    ["Troll-Female-Robe"] = 534,
    ["Troll-Female-Chest"] = 535,
    ["Troll-Female-Shirt"] = 535,
    ["Troll-Female-Shoulder"] = 532,
    ["Troll-Female-Shoulder-Alt"] = 745,
    ["Troll-Female-Tabard"] = 536,
    ["Troll-Female-Waist"] = 539,
    ["Troll-Female-Wrist"] = 537,
    ["Troll-Male-Back"] = 522,
    ["Troll-Male-Chest"] = 689,
    ["Troll-Male-Feet"] = 530,
    ["Troll-Male-Hands"] = 527,
    ["Troll-Male-Head"] = 520,
    ["Troll-Male-Legs"] = 529,
    ["Troll-Male-Robe"] = 523,
    ["Troll-Male-Chest"] = 524,
    ["Troll-Male-Shoulder"] = 521,
    ["Troll-Male-Shoulder-Alt"] = 744,
    ["Troll-Male-Tabard"] = 525,
    ["Troll-Male-Waist"] = 528,
    ["Troll-Male-Wrist"] = 526,
    ["Scourge-Female-Back"] = 555,
    ["Scourge-Female-Feet"] = 563,
    ["Scourge-Female-Hands"] = 560,
    ["Scourge-Female-Head"] = 553,
    ["Scourge-Female-Legs"] = 562,
    ["Scourge-Female-Robe"] = 556,
    ["Scourge-Female-Chest"] = 557,
    ["Scourge-Female-Shirt"] = 557,
    ["Scourge-Female-Shoulder"] = 554,
    ["Scourge-Female-Shoulder-Alt"] = 747,
    ["Scourge-Female-Tabard"] = 558,
    ["Scourge-Female-Waist"] = 561,
    ["Scourge-Female-Wrist"] = 559,
    ["Scourge-Male-Back"] = 544,
    ["Scourge-Male-Chest"] = 690,
    ["Scourge-Male-Feet"] = 552,
    ["Scourge-Male-Hands"] = 549,
    ["Scourge-Male-Head"] = 542,
    ["Scourge-Male-Legs"] = 551,
    ["Scourge-Male-Robe"] = 545,
    ["Scourge-Male-Shirt"] = 546,
    ["Scourge-Male-Shoulder"] = 543,
    ["Scourge-Male-Shoulder-Alt"] = 746,
    ["Scourge-Male-Tabard"] = 547,
    ["Scourge-Male-Waist"] = 550,
    ["Scourge-Male-Wrist"] = 548,
    ["Worgen-Female-Back"] = 322,
    ["Worgen-Female-Feet"] = 330,
    ["Worgen-Female-Hands"] = 327,
    ["Worgen-Female-Head"] = 320,
    ["Worgen-Female-Legs"] = 329,
    ["Worgen-Female-Robe"] = 323,
    ["Worgen-Female-Chest"] = 324,
    ["Worgen-Female-Shirt"] = 324,
    ["Worgen-Female-Shoulder"] = 321,
    ["Worgen-Female-Shoulder-Alt"] = 728,
    ["Worgen-Female-Tabard"] = 325,
    ["Worgen-Female-Waist"] = 328,
    ["Worgen-Female-Wrist"] = 326,
    ["Worgen-Male-Back"] = 311,
    ["Worgen-Male-Feet"] = 319,
    ["Worgen-Male-Hands"] = 316,
    ["Worgen-Male-Head"] = 309,
    ["Worgen-Male-Legs"] = 318,
    ["Worgen-Male-Robe"] = 312,
    ["Worgen-Male-Chest"] = 313,
    ["Worgen-Male-Shirt"] = 313,
    ["Worgen-Male-Shoulder"] = 310,
    ["Worgen-Male-Shoulder-Alt"] = 727,
    ["Worgen-Male-Tabard"] = 314,
    ["Worgen-Male-Waist"] = 317,
    ["Worgen-Male-Wrist"] = 315,
}

slot_override = {
    -- Cloth
    -- appearance 21971
    [106545] = "Shoulder-Alt", -- Orunai Shoulderpads
    [106578] = "Shoulder-Alt", -- Gordunni Shoulderpads
    [112610] = "Shoulder-Alt", -- Steamburst Mantle
    [114271] = "Shoulder-Alt", -- Firefly mantle
    -- appearance 21620
    [106479] = "Shoulder-Alt", -- Iyun Shoulderpads
    [106512] = "Shoulder-Alt", -- Mandragoran Shoulderpads
    [107317] = "Shoulder-Alt", -- Karabor Sage Mantle
    [112086] = "Shoulder-Alt", -- Windburnt Pauldrons
    [106162] = "Shoulder-Alt", -- Frostwolf Wind-Talker Mantle
    -- appearance 21962
    [106413] = "Shoulder-Alt", -- Lunarglow Shoulderpads
    [106446] = "Shoulder-Alt", -- Anchorite Shoulderpads
    [112531] = "Shoulder-Alt", -- Auchenai Keeper Mantle
    -- Leather
    -- [] = "Shoulder-Alt", -- 
    -- Mail
    [7718] = "Shoulder-Alt", -- Herod's Shoulder
    [122356] = "Shoulder-Alt", -- Champion Herod's Shoulder
    [88271] = "Shoulder-Alt", -- Harlan's Shoulders
    -- Plate
    [140617] = "Shoulder-Alt", -- Rakeesh's Pauldron
}
