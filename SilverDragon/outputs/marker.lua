local myname, ns = ...

local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Marker")
local Debug = core.Debug

local mod_announce

local globaldb
function module:OnInitialize()
	globaldb = core.db.global

	self.db = core.db:RegisterNamespace("Marker", {
		profile = {
			enabled = true,
			safely = true,
			marker = 3,
		},
	})

	local config = core:GetModule("Config", true)
	if config then
		config.options.args.outputs.plugins.marker = {
			marker = {
				type = "group",
				name = "標記圖示",
				get = function(info) return self.db.profile[info[#info]] end,
				set = function(info, v) self.db.profile[info[#info]] = v end,
				args = {
					about = config.desc("發現稀有怪時可以自動標記團隊目標圖示。這裡所謂 '看到' 的意思是選為目標或移動滑鼠指向牠。", 0),
					enabled = config.toggle("標記", "發現稀有怪時對牠標記團隊目標圖示。", 30),
					safely = config.toggle("...安全嗎?", "放心，除非你正在隊伍中!", 31),
					marker = {
						type = "select",
						name = "選擇圖示",
						values = {
							[1] = ICON_LIST[1] .. "0|t 星星",
							[2] = ICON_LIST[2] .. "0|t 大餅",
							[3] = ICON_LIST[3] .. "0|t 菱形",
							[4] = ICON_LIST[4] .. "0|t 三角",
							[5] = ICON_LIST[5] .. "0|t 月亮",
							[6] = ICON_LIST[6] .. "0|t 方塊",
							[7] = ICON_LIST[7] .. "0|t 叉叉",
							[8] = ICON_LIST[8] .. "0|t 骷髏",
						},
					},
				},
			},
		}
	end

	mod_announce = core:GetModule("Announce", true)
end

function module:OnEnable()
	core.RegisterCallback(self, "Seen_Raw")
end

function module:Seen_Raw(callback, id, zone, x, y, dead, source, unit)
	if not unit then
		return
	end
	if not self.db.profile.enabled then
		return
	end
	if IsInGroup() and self.db.profile.safely then
		return
	end
	if GetRaidTargetIndex(unit) then
		return
	end
	if id and core:ShouldIgnoreMob(id, GetCurrentMapAreaID()) then
		return
	end
	if mod_announce and not mod_announce:ShouldAnnounce(id, zone, x, y, dead, source, unit) then
		return
	end
	SetRaidTarget(unit, self.db.profile.marker)
	core.events:Fire("Marked", id, self.db.profile.marker, unit)
end
