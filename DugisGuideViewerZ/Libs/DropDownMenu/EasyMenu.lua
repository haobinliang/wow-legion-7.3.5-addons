
-- Simplified Menu Display System
--	This is a basic system for displaying a menu from a structure table.
--
--	See UIDropDownMenu.lua for the menuList details.
--
--	Args:
--		menuList - menu table
--		menuFrame - the UI frame to populate
--		anchor - where to anchor the frame (e.g. CURSOR)
--		x - x offset
--		y - y offset
--		displayMode - border type
--		autoHideDelay - how long until the menu disappears
--
--
-- Config:  {extraHeight = 50}
function LibDugi_EasyMenu(menuList, menuFrame, anchor, x, y, displayMode, autoHideDelay, config)
	if ( displayMode == "MENU" ) then
		menuFrame.displayMode = displayMode;
	end
	LibDugi_UIDropDownMenu_Initialize(menuFrame, LibDugi_EasyMenu_Initialize, displayMode, nil, menuList, config);
	LibDugi_ToggleDropDownMenu(1, nil, menuFrame, anchor, x, y, menuList, nil, autoHideDelay);
end

function LibDugi_EasyMenu_Initialize( frame, level, menuList )
	for index = 1, #menuList do
		local value = menuList[index]
		if (value.text) then
			value.index = index;
			LibDugi_UIDropDownMenu_AddButton( value, level );
		end
	end
end

