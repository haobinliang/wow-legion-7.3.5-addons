--[[
	bagBar -  A bar for holding container buttons
--]]

local AddonName, Addon = ...

-- register buttons for use later
local bagButtons = {}


--[[ Bag Bar ]]--

local BagBar = Addon:CreateClass('Frame', Addon.ButtonBar)

function BagBar:New()
	return BagBar.proto.New(self, '背包')
end

function BagBar:GetDefaults()
	return {
		point = 'BOTTOMRIGHT',
		y = 75,
		spacing = 2,
		fadeAlpha = 0.2,
		hidden = true
	}
end

function BagBar:SetOneBag(enable)
	self.sets.oneBag = enable or nil

	self:ReloadButtons()
end

function BagBar:OneBag()
	return self.sets.oneBag
end


--[[ Frame Overrides ]]--

function BagBar:GetButton(index)
	if self:OneBag() then
		if index == 1 then
			return bagButtons[#bagButtons]
		end

		return nil
	end

	return bagButtons[index]
end

function BagBar:NumButtons()
	if self:OneBag() then
		return 1
	end

	return #bagButtons
end

function BagBar:CreateMenu()
	local menu = Addon:NewMenu(self.id)
	local L = LibStub('AceLocale-3.0'):GetLocale('Dominos-Config')

	local layoutPanel = menu:NewPanel(L.Layout)

	layoutPanel:NewCheckButton{
		name = L.OneBag,
		get = function() return layoutPanel.owner:OneBag() end,
		set = function(_, enable) return layoutPanel.owner:SetOneBag(enable) end,
	}

	layoutPanel:AddLayoutOptions()

	menu:AddAdvancedPanel()

	self.menu = menu
end

--[[ Bag Bar Controller ]]

local BagBarController = Addon:NewModule('BagBar')

function BagBarController:OnInitialize()
	for slot = (NUM_BAG_SLOTS - 1), 0, -1 do
		self:RegisterButton(('CharacterBag%dSlot'):format(slot))
	end

	self:RegisterButton('MainMenuBarBackpackButton')
end

function BagBarController:OnEnable()
	for i, button in pairs(bagButtons) do
		Addon:GetModule('ButtonThemer'):Register(button, '背包列', { Icon = button.icon, Border = button.IconBorder })
	end
end

function BagBarController:Load()
	self.frame = BagBar:New()
end

function BagBarController:Unload()
	if self.frame then
		self.frame:Free()
		self.frame = nil
	end
end

function BagBarController:RegisterButton(name)
	local button = _G[name]

	table.insert(bagButtons, button)
end
