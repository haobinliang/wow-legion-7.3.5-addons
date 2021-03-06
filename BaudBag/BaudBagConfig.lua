local AddOnName, AddOnTable = ...
local _

-- some locally needed variables
local Localized	= BaudBagLocalized
local SliderBars, GlobalCheckButtons, ContainerCheckButtons
BBConfig = {}
-- TODO: somehow changes of BBConfig are not getting stored in AddOnTable.Config, propably something to do with resetting BBConfig at later points...
AddOnTable.Config = BBConfig

function BaudBagSetCfgPreReq(Bars, GlobalButtons, ContainerButtons)
    SliderBars            = Bars;
    GlobalCheckButtons    = GlobalButtons;
    ContainerCheckButtons = ContainerButtons;
end

--[[ helper method to minify the code, checks the given variable and possibly returns a default value ]]
local function checkValue(toCheck, compareWith, default, log)
    -- default check if applied, return default value
    if (type(toCheck) ~= compareWith) then
        BaudBag_DebugMsg("Config", log);
        return default;
    end

    -- check did not match, return original value
    return toCheck;
end

function BaudBagRestoreCfg()
    BaudBag_DebugMsg("Config", "Restoring BBConfig structure:");
	
    -- cofig base
    BaudBag_Cfg = checkValue(BaudBag_Cfg, "table", {}, "- basic BBConfig damaged or missing, creating now");
    BBConfig = BaudBag_Cfg;

    -- global options first
    for Key, Value in ipairs(GlobalCheckButtons) do
        BBConfig[Value.SavedVar] = checkValue(BBConfig[Value.SavedVar], "boolean", Value.Default, "- Global CheckBox["..Value.SavedVar.."] data damaged or missing, creating now");
    end

    for BagSet = 1, 2 do
        BBConfig[BagSet]          = checkValue(BBConfig[BagSet],          "table",   {},   "- BBConfig for BagSet "..BagSet.." damaged or missing, creating now");
		BBConfig[BagSet].Enabled  = checkValue(BBConfig[BagSet].Enabled,  "boolean", true, "- enabled state for BagSet "..BagSet.." damaged or missing, creating now");
        BBConfig[BagSet].CloseAll = checkValue(BBConfig[BagSet].CloseAll, "boolean", true, "- close all state for BagSet "..BagSet.." damaged or missing, creating now");
        BBConfig[BagSet].Joined   = checkValue(BBConfig[BagSet].Joined,   "table",   {},   "- joins for BagSet "..BagSet.." damaged or missing, creating now");
        BBConfig[BagSet].ShowBags = checkValue(BBConfig[BagSet].ShowBags, "boolean", (BagSet == 2), "- show information for BagSet "..BagSet.." damaged or missing, creating now");

        -- make sure the reagent bank is NOT joined by default!
        if (BagSet == 2 and BBConfig[2].Joined[9] == nil) then
            BaudBag_DebugMsg("Config", "- reagent bank join for BagSet "..BagSet.." damaged or missing, creating now");
            BBConfig[BagSet].Joined[9] = false;
        end

        local Container = 0;
        BaudBagForEachBag(BagSet, function(Bag, Index)

            if (Container == 0) or (BBConfig[BagSet].Joined[Index] == false) then
                Container = Container + 1;

                if (type(BBConfig[BagSet][Container]) ~= "table") then
                    BaudBag_DebugMsg("Config", "- BagSet["..BagSet.."], Bag["..Bag.."], Container["..Container.."] container data damaged or missing, creating now");
                    if (Container == 1) or (Bag==-3) then
                        BBConfig[BagSet][Container] = {};
                    else
                        BBConfig[BagSet][Container] = BaudBagCopyTable(BBConfig[BagSet][Container-1]);
                    end
                end

                if not BBConfig[BagSet][Container].Name then
                    BaudBag_DebugMsg("Config", "- BagSet["..BagSet.."], Bag["..Bag.."], Container["..Container.."] container name missing, creating now");
                    BBConfig[BagSet][Container].Name = UnitName("player")..Localized.Of..((BagSet==1) and Localized.Inventory or Localized.BankBox);
                    if (Bag == REAGENTBANK_CONTAINER) then
                        BBConfig[BagSet][Container].Name = UnitName("player")..Localized.Of..Localized.ReagentBankBox;
                    end
                end

                if (type(BBConfig[BagSet][Container].Background) ~= "number") then
                    BaudBag_DebugMsg("Config", "- BagSet["..BagSet.."], Bag["..Bag.."], Container["..Container.."] container background damaged or missing, creating now");
                    if (BagSet == 2) then
                        -- bank containers have "blizz bank" default
                        BBConfig[BagSet][Container].Background = 2;
                    else
                        -- default contains have "blizz inventory" default
                        BBConfig[BagSet][Container].Background = 1;
                    end
                end

                for Key, Value in ipairs(SliderBars) do
                    BBConfig[BagSet][Container][Value.SavedVar] = checkValue(BBConfig[BagSet][Container][Value.SavedVar], "number", Value.Default[BagSet], "- BagSet["..BagSet.."], Bag["..Bag.."], Container["..Container.."] Slider["..Value.SavedVar.."] data damaged or missing, creating now");
                end

                for Key, Value in ipairs(ContainerCheckButtons) do
                    BBConfig[BagSet][Container][Value.SavedVar] = checkValue(BBConfig[BagSet][Container][Value.SavedVar], "boolean", Value.Default, "- BagSet["..BagSet.."], Bag["..Bag.."], Container["..Container.."] CheckBox["..Value.SavedVar.."] data damaged or missing, creating now");
                end
            end
        end);
    end
    AddOnTable.Config = BBConfig
    AddOnTable:Configuration_Loaded()
end

function ConvertOldConfig()
    -- take over old sell junk data
    if (type(BBConfig[1]) == "table" and type(BBConfig[1].SellJunk) == "boolean") then
        BaudBag_DebugMsg("Config", "- sell junk state is now global, converting old value from bag set 1");
        BBConfig.SellJunk = BBConfig[1].SellJunk;
        BBConfig[1].SellJunk = nil;
        BBConfig[2].SellJunk = nil;
    end

    -- take over old new items highlight data
    if (type(BBConfig[1]) == "table" and type(BBConfig[1][1]) == "table" and type(BBConfig[1][1].ShowNewItems) == "boolean") then
        BaudBag_DebugMsg("Config", "- show new items state is now global, converting old value from first bagpack container");
        BBConfig.ShowNewItems = BBConfig[1][1].ShowNewItems;
        for BagSet = 1, 2 do
            local Container = 0;
            BaudBagForEachBag(BagSet, function(Bag, Index)
                if (Container == 0) or (BBConfig[BagSet].Joined[Index] == false) then
                    Container = Container + 1;
                    if (type(BBConfig[BagSet][Container].ShowNewItems) == "boolean") then
                        BBConfig[BagSet][Container].ShowNewItems = nil;
                    end
                end
            end);
        end
    end
end

function BaudBagSaveCfg()
    BaudBag_DebugMsg("Config", "Saving configuration");
    BaudBag_Cfg = BaudBagCopyTable(BBConfig);
    ReloadConfigDependant();
    AddOnTable:Configuration_Updated()
end

function ReloadConfigDependant()
    BaudBag_DebugMsg("Config", "Reloading configuration depending objects");
    BaudUpdateJoinedBags();
    BaudBagUpdateBagFrames();
    BaudBagOptionsUpdate();
end

--[[--------------------------------------------------------------------------------
------------------------ config specific hooks for binding -------------------------
----------------------------------------------------------------------------------]]

function AddOnTable:Configuration_Loaded()
    -- just an empty hook for other addons or extensions
end

function AddOnTable:Configuration_Updated()
    -- just an empty hook for other addons or extensions
end
