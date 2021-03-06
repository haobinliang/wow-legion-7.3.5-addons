--------------------------------------------------------------------------
-- GTFO_Spells_BFA.lua 
--------------------------------------------------------------------------
--[[
GTFO Spell List - Battle for Azeroth
Author: Zensunim of Malygos
]]--


--- ******************************
--- * Battle for Azeroth (World) *
--- ******************************

GTFO.SpellID["206224"] = {
  --desc = "Burning Blaze";
  sound = 1;
};

GTFO.SpellID["254850"] = {
  --desc = "Lob Flames (Battle for Lordaeron)";
  sound = 1;
  test = true;
};

GTFO.SpellID["248958"] = {
  --desc = "Blight";
  sound = 1;
  damageMinimum = 1;
};

GTFO.SpellID["222345"] = {
  --desc = "Bladestorm (High Overlord Saurfang)";
  sound = 1;
};

GTFO.SpellID["268224"] = {
  --desc = "Shrapnel Blast (Cannon)";
  sound = 1;
};

GTFO.SpellID["271634"] = {
  --desc = "Blizzard (Mage Commander Lyra)";
  sound = 1;
  test = true; -- Didn't work in alpha, might be worth checking out
};

GTFO.SpellID["271703"] = {
  --desc = "Tar Fire";
  sound = 1;
};

GTFO.SpellID["271737"] = {
  --desc = "Rocket Barrage (Gnomish Gyro-Engineer)";
  sound = 2;
};

-- ***********************
-- * Shrine of the Storm *
-- ***********************

GTFO.SpellID["274438"] = {
  --desc = "Tempest (Windspeaker Heldis)";
  sound = 1;
};

GTFO.SpellID["269419"] = {
  --desc = "Yawning Gate (Vol'zith the Whisperer)";
  sound = 1;
};

-- ******************
-- * Waycrest Manor *
-- ******************

GTFO.SpellID["264712"] = {
  --desc = "Rotten Expulsion (nil)";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["264698"] = {
  --desc = "Rotten Expulsion (Raal the Gluttonous)";
  sound = 1;
};

GTFO.SpellID["260569"] = {
  --desc = "Wildfire";
  sound = 1;
};

GTFO.SpellID["264040"] = {
  --desc = "Uprooted Thorns";
  sound = 1;
};

GTFO.SpellID["268308"] = {
  --desc = "Discordant Cadenza (Lady Waycrest)";
  sound = 1;
};

-- ************
-- * Freehold *
-- ************

GTFO.SpellID["257274"] = {
  --desc = "Vile Coating";
  sound = 1;
  test = true;
};

GTFO.SpellID["256016"] = {
  --desc = "Vile Coating (Skycap'n Kragg)";
  sound = 1;
  test = true;
};

GTFO.SpellID["256552"] = {
  --desc = "Flailing Shark (Sawtooth Shark)";
  sound = 1;
};

GTFO.SpellID["256546"] = {
  --desc = "Shark Tornado (Trothak)";
  sound = 1;
};

GTFO.SpellID["257737"] = {
  --desc = "Thundering Squall (Irontide Stormcaller)";
  sound = 1;
};

GTFO.SpellID["257871"] = {
  --desc = "Blade Barrage (Irontide Buccaneer)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["257460"] = {
  --desc = "Flaming Shrapnel (Harlan Sweete)";
  sound = 1;
};

-- *************
-- * Tol Dagor *
-- *************

-- TBA...

-- ****************
-- * The Underrot *
-- ****************

GTFO.SpellID["265542"] = {
  --desc = "Rotten Bile (Fetid Maggot)";
  sound = 1;
};

GTFO.SpellID["265540"] = {
  --desc = "Rotten Bile (Fetid Maggot)";
  sound = 1;
};

GTFO.SpellID["261498"] = {
  --desc = "Creeping Rot (Elder Leaxa)";
  applicationOnly = true;
  sound = 1;
  test = true;
};

GTFO.SpellID["265687"] = {
  --desc = "Noxious Poison (Venomous Lasher)";
  sound = 1;
  test = true;
};

GTFO.SpellID["269838"] = {
  --desc = "Vile Expulsion (Unbound Abomination)";
  sound = 1;
};

-- ************************
-- * Temple of Sethraliss *
-- ************************

GTFO.SpellID["272657"] = {
  --desc = "Noxious Breath (Scaled Krolusk Rider)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["272696"] = {
  --desc = "Oil of Immolation (Crazed Incubator)";
  sound = 1;
};

-- ********************
-- * The MOTHERLODE!! *
-- ********************

GTFO.SpellID["258628"] = {
  --desc = "Resonant Quake (Azerokk)";
  sound = 1;
};

GTFO.SpellID["263105"] = {
  --desc = "Blowtorch (Feckless Assistant)";
  sound = 1;
  tankSound = 0;
};

GTFO.SpellID["269831"] = {
  --desc = "Azerite Toxicity";
  sound = 1;
};

GTFO.SpellID["260103"] = {
  --desc = "Propellant Blast (Rixxa Fluxflame)";
  sound = 1;
};

GTFO.SpellID["259533"] = {
  --desc = "Agent Azerite (Rixxa Fluxflame)";
  sound = 1;
};

GTFO.SpellID["260279"] = {
  --desc = "Gatling Gun (Mogul Razdunk)";
  sound = 1;
};

-- **************
-- * Atal'Dazar *
-- **************

GTFO.SpellID["255842"] = {
  --desc = "Blood-Tainted Cauldron of Gold (nil)";
  sound = 1;
};

GTFO.SpellID["257692"] = {
  --desc = "Tiki Blaze";
  applicationOnly = true;
  sound = 1;
};

GTFO.SpellID["250585"] = {
  --desc = "Toxic Pool (Vol'kaal)";
  sound = 1;
};

GTFO.SpellID["250036"] = {
  --desc = "Shadowy Remains";
  sound = 1;
};

GTFO.SpellID["265625"] = {
  --desc = "Dark Omen (Befouled Spirit)";
  sound = 4;
  negatingDebuffSpellID = 265568;  -- Befouled Spirit
  negatingIgnoreTime = 1;
  test = true;
};
