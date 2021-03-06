--[[ a dominos frame options/right-click menu ]]--

local AddonName, Addon = ...
local Menu = Addon:CreateClass('Frame')
local L = LibStub('AceLocale-3.0'):GetLocale('Dominos-Config')

local MenuBackdrop = {
	bgFile   = [[Interface\ChatFrame\ChatFrameBackground]],
	edgeFile = [[Interface\ChatFrame\ChatFrameBackground]],
	insets   = {left = 2, right = 2, top = 2, bottom = 2},
	edgeSize = 2,
}

local nextName = Addon:CreateNameGenerator('Frame')

function Menu:New(parent)
	local f = self:Bind(CreateFrame('Frame', nextName(), parent or _G.UIParent))

	f.panels = {}
	f:SetBackdrop(MenuBackdrop)
	f:SetBackdropColor(0, 0, 0, 0.8)
	f:SetBackdropBorderColor(0.3, 0.3, 0.3, 0.8)
	f:EnableMouse(true)
	f:SetToplevel(true)
	f:SetMovable(true)
	f:SetClampedToScreen(true)
	f:SetFrameStrata('DIALOG')

	-- title region
	local tr = CreateFrame('Frame', nil, f)
	tr:EnableMouse(true)
	tr:RegisterForDrag('LeftButton')
	tr:SetScript('OnDragStart', function() f:StartMoving() end)
	tr:SetScript('OnDragStop', function() f:StopMovingOrSizing() end)
	tr:SetPoint('TOPLEFT', f, 'TOPLEFT', 2, -2)
	tr:SetPoint('BOTTOMRIGHT', f, 'TOPRIGHT', -2, -20)

	local trBackground = f:CreateTexture(nil, 'ARTWORK')
	trBackground:SetAllPoints(tr)
	trBackground:SetColorTexture(0.2, 0.2, 0.2, 0.5)

	--title text
	local text = f:CreateFontString(nil, 'OVERLAY', 'GameFontNormal')
	text:SetPoint('CENTER', tr)
	f.text = text

	-- this was originally a standard close button
	-- but placement looked weird when scaled
	local closeButton = CreateFrame('Button', nil, f)
	closeButton:SetNormalFontObject('GameFontRedLarge')
	closeButton:SetHighlightFontObject('GameFontHighlightLarge')
	closeButton:SetText('×')
	closeButton:SetSize(closeButton:GetFontString():GetSize())
	closeButton:SetPoint('TOPRIGHT', tr, -2, -2)
	closeButton:SetScript('OnClick', function() f:Hide() end)
	closeButton:SetFrameLevel(tr:GetFrameLevel() + 1)

	-- panel selector
	local panelSelector = Addon.PanelSelector:New(f)
	panelSelector:SetPoint('TOPLEFT', tr, 'BOTTOMLEFT', 0, 0)
	panelSelector:SetPoint('TOPRIGHT', tr, 'BOTTOMRIGHT', 0, 0)
	panelSelector:SetHeight(20)
	panelSelector.OnSelect = function(self, id)
		f:OnShowPanel(id)
	end
	f.panelSelector = panelSelector

	-- panel container
	local panelContainer = CreateFrame('Frame', nil, f)
	panelContainer:SetPoint('TOPLEFT', panelSelector, 'BOTTOMLEFT', 2, -2)
	panelContainer:SetPoint('TOPRIGHT', panelSelector, 'BOTTOMRIGHT', -2, -2)
	panelContainer:SetPoint('BOTTOM', 0, 4)
	f.panelContainer = panelContainer

	f:SetSize(240 * 1.25, 320 * 1.25)
	return f
end

--tells the panel what frame we're pointed to
function Menu:SetOwner(owner)
	if self.panels then
		for i, panel in pairs(self.panels) do
			panel.container:SetOwner(owner)
		end
	end

	self.text:SetFormattedText(L.BarSettings, owner:GetDisplayName())
	self:Anchor(owner)
end

function Menu:Anchor(frame)
	local ratio = _G.UIParent:GetScale() / frame:GetEffectiveScale()
	local x = frame:GetLeft() / ratio
	local y = frame:GetTop() / ratio

	self:ClearAllPoints()
	self:SetPoint('TOPRIGHT', _G.UIParent, 'BOTTOMLEFT', x, y)
end

function Menu:NewPanel(id)
	self.panelSelector:AddPanel(id)

	local panel = Addon.ScrollablePanel:New(self.panelContainer)
	panel:SetAllPoints(self.panelContainer)
	panel:Hide()

	self.panels[id] = panel

	return panel.container
end

function Menu:ShowPanel(id)
	return self.panelSelector:Select(id)
end

function Menu:OnShowPanel(id)
	if self.panels then
		for i, panel in pairs(self.panels) do
			if i == id then
				panel:Show()
			else
				panel:Hide()
			end
		end
	end
end

function Menu:AddLayoutPanel()
	local panel = self:NewPanel(L.Layout)

	panel:AddLayoutOptions()

	return panel
end

function Menu:AddAdvancedPanel()
	local panel = self:NewPanel(L.Advanced)

	panel:AddAdvancedOptions()

	return panel
end

Addon.Menu = Menu