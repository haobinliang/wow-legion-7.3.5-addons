local inserted = false
function DBMCPOverwatch()
	if inserted then return end
	tinsert(DBM.Counts, {	text	= "Overwatch: Announcer",	value 	= "Overwatch", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Announcer\\", max = 10})
	tinsert(DBM.Counts, {	text	= "Overwatch: Bastion",	value 	= "Bastion", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Bastion\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: D.Va",	value 	= "DVa", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\DVa\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: D.Va (Korean)",	value 	= "DVakr", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\DVa\\kr\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Genji",	value 	= "Genji", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Genji\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Genji (Japanese)",	value 	= "Genjijp", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Genji\\jp\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Hanzo",	value 	= "Hanzo", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Hanzo\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Junkrat",	value 	= "Junkrat", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Junkrat\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Lucio",	value 	= "Lucio", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Lucio\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Mccree",	value 	= "Mccree", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Mccree\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Mei",	value 	= "Mei", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Mei\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Mei (Chinese)",	value 	= "Meicn", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Mei\\cn\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Mercy",	value 	= "Mercy", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Mercy\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Pharah",	value 	= "Pharah", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Pharah\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Reaper",	value 	= "Reaper", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Reaper\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Reinhardt",	value 	= "Reinhardt", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Reinhardt\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Roadhog",	value 	= "Roadhog", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Roadhog\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Soldier",	value 	= "Soldier", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Soldier\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Symmetra",	value 	= "Symmetra", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Symmetra\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Torbjorn",	value 	= "Torbjorn", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Torbjorn\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Tracer",	value 	= "Tracer", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Tracer\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Widowmaker",	value 	= "Widowmaker", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Widowmaker\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Winston",	value 	= "Winston", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Winston\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Zarya",	value 	= "Zarya", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Zarya\\", max = 5})
	tinsert(DBM.Counts, {	text	= "Overwatch: Zenyatta",	value 	= "Zenyatta", path = "Interface\\AddOns\\DBM-CountPack-Overwatch\\Zenyatta\\", max = 5})
	inserted = true
end