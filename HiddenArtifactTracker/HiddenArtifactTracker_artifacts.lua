if HiddenArtifactTrackerFuncs == nil then HiddenArtifactTrackerFuncs={} end

--Blood
HiddenArtifactTrackerFuncs["Maw of the Damned"] = 
	function()
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"訓練凋萎者", 43943, 1033) -- Withered Training / questnumber / in Suramar
	end

--Frost (DK)
HiddenArtifactTrackerFuncs["Blades of the Fallen Prince"] = 
	function()
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"World Boss: Soultakers", 42269, 1017) -- Soultakers / questnumber / in Stormheim
	end

--Unholy
HiddenArtifactTrackerFuncs["Apocalypse"] =
	function()

		local r,g,b=1,1,1

		local y,z
		 _,_,_,y,z = GetAchievementCriteriaInfo(11231,1)
		if HiddenArtifactTracker.colourOptions then
			r=math.min(1,2-(2*y/z)); g=math.min(1,2*y/z); b=0
		end

		GameTooltip:AddLine("\n召喚亡靈大軍："..y.."/"..z,r,g,b);
	end

--havoc
HiddenArtifactTrackerFuncs["Twinblades of the Deceiver"] =
	function()
	end


--balance
HiddenArtifactTrackerFuncs["Scythe of Elune"] =
	function()
		HiddenArtifactTrackerFuncs.RepCheck(1883, 8) --dreamweavers to exalted
	end

--Feral
HiddenArtifactTrackerFuncs["Fangs of Ashamane"] = 
	function()

			local r,g,b

			HiddenArtifactTrackerFuncs.CheckQuest(44326, "造訪翡翠夢途", nil)

			local feral_quests = {{"菲拉斯", 44331, 44327}, {"辛特蘭", 44332, 44328}, {"暮色森林", 44330, 44329}}
			for i=1,3 do
				if IsQuestFlaggedCompleted(feral_quests[i][2]) then
					r = not HiddenArtifactTracker.colourOptions and 1 or 0.5
					g = 1
					b = not HiddenArtifactTracker.colourOptions and 1 or 0.5
					GameTooltip:AddLine(feral_quests[i][1].."之石：完成",r,g,b)
				else
					if IsQuestFlaggedCompleted(feral_quests[i][3]) then
						r = 1; g=1
						b = not HiddenArtifactTracker.colourOptions and 1 or 0
						GameTooltip:AddLine(feral_quests[i][1].."之石：啟動中",r,g,b)
					else
						r = 1
						g = not HiddenArtifactTracker.colourOptions and 1 or 0
						b = not HiddenArtifactTracker.colourOptions and 1 or 0
						GameTooltip:AddLine(feral_quests[i][1].."之石：未完成",r,g,b)
					end
				end
			end
	end

--guardian
HiddenArtifactTrackerFuncs["Claws of Ursoc"] = 
	function()
		HiddenArtifactTrackerFuncs.BossLockouts("The Emerald Nightmare", 1288, "厄索克", 1) 
	end

--marksmanship
HiddenArtifactTrackerFuncs["Thas'dorah, Legacy of the Windrunners"] =
	function()
		HiddenArtifactTrackerFuncs.RepCheck(1900, 7) --Court of Farondis to revered
	end

--survival
HiddenArtifactTrackerFuncs["Talonclaw"] =
	function()
		HiddenArtifactTrackerFuncs.BossLockouts("The Emerald Nightmare", 1288, "厄索克", 1) 
	end

--arcane
HiddenArtifactTrackerFuncs["Aluneth"] =
	function()

		HiddenArtifactTrackerFuncs.CheckQuest(43787, "變形 崖翼角鷹獸 - 艾蘇納", nil)
		HiddenArtifactTrackerFuncs.CheckQuest(43788, "變形 高峰山羊 - 高嶺", nil)
		HiddenArtifactTrackerFuncs.CheckQuest(43789, "變形 平原符角犢牛 - 斯鐸海姆", nil)
		HiddenArtifactTrackerFuncs.CheckQuest(43790, "變形 野生的逐夢馬 - 維爾薩拉", nil)
		HiddenArtifactTrackerFuncs.CheckQuest(43791, "變形 心林雌鹿 - 蘇拉瑪爾", nil)
		HiddenArtifactTrackerFuncs.CheckQuest(43828, "造訪職業大廳的綿羊事件", nil)
	end

--fire
HiddenArtifactTrackerFuncs["Felo'melorn"] =
	function()
	end
HiddenArtifactTrackerFuncs["Heart of the Phoenix"] = HiddenArtifactTrackerFuncs["Felo'melorn"]

--frost
HiddenArtifactTrackerFuncs["Ebonchill"] = 
	function()
		HiddenArtifactTrackerFuncs.CheckQuest(44384, "造訪職業大廳的傳送門室", nil)
	end

--mistweaver
HiddenArtifactTrackerFuncs["Sheilun, Staff of the Mists"] = 
	function()
		HiddenArtifactTrackerFuncs.BossLockouts("The Emerald Nightmare", 1288, "翡翠夢靨團隊副本", 2) 
	end

--windwalker
HiddenArtifactTrackerFuncs["Fists of the Heavens"] = 
	function()
		GameTooltip:AddLine(" ")
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"訓練凋萎者", 43943, 1033) -- Withered Training / questnumber / in Suramar
	end

--holy (paladin)
HiddenArtifactTrackerFuncs["The Silver Hand"] =
	function()
	end
HiddenArtifactTrackerFuncs["Tome of the Silver Hand"] = HiddenArtifactTrackerFuncs["The Silver Hand"]

--protection
HiddenArtifactTrackerFuncs["Truthguard"] = 
	function()
		GameTooltip:AddLine(" ")
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"訓練凋萎者", 43943, 1033) -- Withered Training / questnumber / in Suramar
	end
HiddenArtifactTrackerFuncs["Oathseeker"] = HiddenArtifactTrackerFuncs["Truthguard"]

--retribution
HiddenArtifactTrackerFuncs["Ashbringer"] =
	function()
	end

--discipline
HiddenArtifactTrackerFuncs["Light's Wrath"] =
	function()
		HiddenArtifactTrackerFuncs.CheckQuest(44339, "書籍 1 未閱讀", "書籍 1 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44340, "書籍 2 未閱讀", "書籍 2 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44341, "書籍 3 未閱讀", "書籍 3 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44342, "書籍 4 未閱讀", "書籍 4 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44343, "書籍 5 未閱讀", "書籍 5 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44344, "書籍 6 未閱讀", "書籍 6 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44345, "書籍 7 未閱讀", "書籍 7 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44346, "書籍 8 未閱讀", "書籍 8 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44347, "書籍 9 未閱讀", "書籍 9 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44348, "書籍 10 未閱讀", "書籍 10 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44349, "書籍 11 未閱讀", "書籍 11 已讀")
		HiddenArtifactTrackerFuncs.CheckQuest(44350, "書籍 12 未閱讀", "書籍 12 已讀")
	end

--holy (priest)
HiddenArtifactTrackerFuncs["T'uure, Beacon of the Naaru"] =
	function()
		HiddenArtifactTrackerFuncs.RepCheck(1948, 8) --Valarjar to exalted
	end

--shadow
HiddenArtifactTrackerFuncs["Xal'atath, Blade of the Black Empire"] = 
	function()
		HiddenArtifactTrackerFuncs.BossLockouts("The Emerald Nightmare", 1287, "『腐化之心』伊蓋諾斯", 2) 
	end
HiddenArtifactTrackerFuncs["Secrets of the Void"] = HiddenArtifactTrackerFuncs["Xal'atath, Blade of the Black Empire"]	

--assassination
HiddenArtifactTrackerFuncs["The Kingslayers"] =
	function()
	end

--outlaw
HiddenArtifactTrackerFuncs["The Dreadblades"] =
	function()
	end

--elemental
HiddenArtifactTrackerFuncs["The Fist of Ra-den"] =
	function()
	end
HiddenArtifactTrackerFuncs["The Highkeeper's Ward"] = HiddenArtifactTrackerFuncs["The Fist of Ra-den"]

--enhancement
HiddenArtifactTrackerFuncs["Doomhammer"] = 
	function()
		GameTooltip:AddLine(" ")
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"World Boss: Flotsam", 43985, 1024) --1024 = highmountain
		HiddenArtifactTrackerFuncs.getWorldBossQ(true,"World Boss: Levantus", 43192, 1015) --1015 = azsuna
		GameTooltip:AddLine(" ")
		HiddenArtifactTrackerFuncs.BossLockouts("Trial of Valor", 1411, "Helya", 3)
	end
HiddenArtifactTrackerFuncs["Fury of the Stonemother"] = HiddenArtifactTrackerFuncs["Doomhammer"]

--affliction
HiddenArtifactTrackerFuncs["Ulthalesh, the Deadwind Harvester"] =
	function()

		--as requested by jetah! using comments from http://www.wowhead.com/quest=44083/the-grimoire-of-the-first-necrolyte#comments
			GameTooltip:AddLine(" ")
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Fjorlag", 42806 ,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Captain Dargun",42864,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Rulf Bonesnapper",42963,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Lagertha",42964,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Runeseer Sigvid",42991,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Soulbinder Halldora",42953,1017)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Stormheim: Aegir Wavecrusher",42820,1017)

			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Mortiferous",43027,1015)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Lysanis Shadesoul",44192,1015)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Jade Darkhaven",44190,1015)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Chief Treasurer Jabrill",43121,1015)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Sea King Tidross",44193,1015)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Azsuna: Valakar the Thirsty",43040,1015)

			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Highmountain: Ormagrogg",41703,1024)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Highmountain: Durguth",41,1024)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Highmountain: Oubdob da Smasher",41816,1024)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Highmountain: Olokk the Shipbreaker",41686,1024)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Highmountain: Defilia",41695,1024)

			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Magistrix Vilessa",44114,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Auditor Esiel",44118,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Az'jatar",44121,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Apothecary Faldren",44032,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Colerian, Alteria, and Selenyi - Outrider Trio",41697,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Sorallus",44122,1033)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Suramar: Scythmaster Cil'raman",42797,1033)

			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Kathaw the Savage",42870,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Malisandra",42927,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Ealdis",43346,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Rabxach",43347,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Shalas'aman",41700,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Aodh Witherpetal",43344,1018)
			HiddenArtifactTrackerFuncs.getWorldBossQ(false,"Val'sharah: Witchdoctor Grgl-Brgl",43101,1018)
	end

--Demonology
HiddenArtifactTrackerFuncs["Skull of the Man'ari"] =
	function()
	--track heads?
	end
HiddenArtifactTrackerFuncs["Spine of Thal'kiel"] = HiddenArtifactTrackerFuncs["Skull of the Man'ari"]

--arms
HiddenArtifactTrackerFuncs["Strom'kar, the Warbreaker"] =
	function()
	end
--fury
HiddenArtifactTrackerFuncs["Warswords of the Valarjar"] =
	function()
		if HiddenArtifactTrackerFuncs.RepCheck(1948, 8) then --Valarjar to exalted
			HiddenArtifactTrackerFuncs.getWorldBossQ(true,"World Boss: Nithogg", 42270, 1017) -- Nithogg / questnumber / in Stormheim
			HiddenArtifactTrackerFuncs.getWorldBossQ(true,"World Boss: Shar'thos", 42779, 1018) --Shar'thos / quest number / in val'sharah
			GameTooltip:AddLine(" ")
			HiddenArtifactTrackerFuncs.BossLockouts("Trial of Valor", 1411, "Odyn", 1) 
		end
	end

--protection (warrior)
HiddenArtifactTrackerFuncs["Scale of the Earth-Warder"] =
	function()
				
			if IsQuestFlaggedCompleted(44311) then
				local r = HiddenArtifactTracker.colourOptions and 0 or 1
				local g = 1
				local b = HiddenArtifactTracker.colourOptions and 0 or 1
				GameTooltip:AddLine("成功骰到隱藏版外觀!", r,g,b)
			elseif IsQuestFlaggedCompleted(44312) then
				local r = 1
				local g = HiddenArtifactTracker.colourOptions and 0 or 1
				local b = HiddenArtifactTracker.colourOptions and 0 or 1
				GameTooltip:AddLine("今天沒有骰到隱藏版外觀事件。", r,g,b)
			else
				local r = HiddenArtifactTracker.colourOptions and 0.5 or 1
				local g = HiddenArtifactTracker.colourOptions and 0.5 or 1
				local b = 1
				GameTooltip:AddLine("查看高嶺奈薩里奧的寶藏 (不是巢穴!)", r,g,b)
			end
	end
HiddenArtifactTrackerFuncs["Scaleshard"] = HiddenArtifactTrackerFuncs["Scale of the Earth-Warder"]

-- utility functions
function HiddenArtifactTrackerFuncs.getWorldBossQ(showNeg,name, qNumber, zNumber)

	SetMapByID(1007)
	local a=C_TaskQuest.GetQuestsForPlayerByMapID(zNumber)

	for i,j in ipairs(a) do
		if j.questId == qNumber then
			local r = HiddenArtifactTracker.colourOptions and 0 or 1
			local g = 1
			local b = HiddenArtifactTracker.colourOptions and 0 or 1
			GameTooltip:AddLine(name.." 可拾取!",r,g,b)
			return
		end
	end
	
	if showNeg then
		local r = 1
		local g = HiddenArtifactTracker.colourOptions and 0 or 1
		local b = HiddenArtifactTracker.colourOptions and 0 or 1
		GameTooltip:AddLine(name.." 不可拾取。",r,g,b)
	end
end

function HiddenArtifactTrackerFuncs.getBossAvailability(rName, bName, bDiff)

	local getInst, getBoss = GetSavedInstanceInfo, GetSavedInstanceEncounterInfo

	local i,j=0,0
	local name, numEncounters, diff, locked, killed

	while i~=GetNumSavedInstances() and (name ~= rName or diff~= bDiff) do
		i=i+1
		name, _, _, diff, locked ,_ , _, _, _, _, numEncounters, _ = getInst(i)
	end

	--if the while loop is exhausted without finding the raid at the right difficulty
	-- or it was found but the raid is not locked then player cannot be locked to the boss
	if name~=rName or diff~=bDiff or locked==false then 
		return false
	end

	--if the raid was found to be locked, check through each boss in that encounter
	while j~=numEncounters and name ~= bName do
		j=j+1
		name, _, killed,_ = getBoss(i,j)
	end

	if name~=bName then
		print("(HiddenArtifactTracker) 在 "..rName.." 無法找到首領 "..bName.."。 請到 Curse 網站回報這個錯誤。")
	end

	return killed
end

function HiddenArtifactTrackerFuncs.BossLockouts(raid, raidID, boss, bossID)
		local r,g,b=1,1,1

		local killed

		_, _, killed, _ = GetLFGDungeonEncounterInfo(raidID, bossID)
		if not killed then
			if HiddenArtifactTracker.colourOptions then
				r,g,b=0,1,0
			end
			GameTooltip:AddLine("\n"..boss.." 可拾取 - 隨機",r,g,b)
		else
			if HiddenArtifactTracker.colourOptions then
				r,g,b=1,0,0
			end
			GameTooltip:AddLine("\n已拾取 "..boss.." - 隨機",r,g,b)
		end

		--everything else
		local difficulty={[14]="普通", [15]="英雄", [16]="傳奇"}
		for i = 14,16 do
			killed = HiddenArtifactTrackerFuncs.getBossAvailability(raid, boss, i)
			if not killed then
				if HiddenArtifactTracker.colourOptions then
					r,g,b=0,1,0
				end
				GameTooltip:AddLine(boss.." 可拾取 - "..difficulty[i],r,g,b)
			else
				if HiddenArtifactTracker.colourOptions then
					r,g,b=1,0,0
				end
				GameTooltip:AddLine("已拾取 "..boss.." - "..difficulty[i],r,g,b)
			end
		end
	end

function HiddenArtifactTrackerFuncs.getAK(threshold)

		local name, amount = GetCurrencyInfo(1171)	--Artifact knowledge	
		local r,g,b=1,1,1

		if HiddenArtifactTracker.colourOptions and amount <threshold then
			r,g,b = 1,0,0
		elseif HiddenArtifactTracker.colourOptions then
			r,g,b = 0,1,0
		end
		
		GameTooltip:AddLine("\n"..name..": "..amount.."/"..threshold,r,g,b)

		return amount >= threshold
end

function HiddenArtifactTrackerFuncs.RepCheck(faction, level)

		local name, _, standingID, _, _, value = GetFactionInfoByID(faction)
		local standing = {"仇恨", "敵對", "不友好", "中立", "友好", "尊敬", "崇敬", "崇拜"}
		standingLvls = {0,0,0,0, 3000, 9000, 21000, 42000}
		local r,g,b=1,1,1

		if HiddenArtifactTracker.colourOptions then
			r = math.min(1, 2 - 2*value/standingLvls[level])
			g = math.min(1, 2*value/standingLvls[level])
			b = (level < standingID) and 0.5 or 0
		end
		GameTooltip:AddLine("\n"..name..": "..value.."/"..standingLvls[level].." ("..standing[standingID].."/"..standing[level]..")", r,g,b)

		return standingID >= level
end

function HiddenArtifactTrackerFuncs.CheckQuest(id, promptStringF, promptStringT)
			if promptStringF ~=nil and not IsQuestFlaggedCompleted(id) then
				if HiddenArtifactTracker.colourOptions then
					GameTooltip:AddLine(promptStringF, 1,1,0)
				else
					GameTooltip:AddLine(promptStringF, 1,1,1)
				end
			end

			if promptStringT ~=nil and IsQuestFlaggedCompleted(id) then
				if HiddenArtifactTracker.colourOptions then
					GameTooltip:AddLine(promptStringT, 0,1,0)
				else
					GameTooltip:AddLine(promptStringT, 1,1,1)
				end
			end
	end