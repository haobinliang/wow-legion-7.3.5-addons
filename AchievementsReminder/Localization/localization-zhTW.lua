if GetLocale() == "zhTW" then



function iclllocaleui()

ralldifscenario = "事件"
	arallbuttonmaint = "區域列表"
	arallbuttontak = "戰術"
		areachatlist1 = "團隊"
	areachatlist2 = "團隊警报"
	areachatlist3 = "官員"
	areachatlist4 = "隊伍"
	areachatlist5 = "公會"
	areachatlist6 = "說"
	areachatlist7 = "大喊"
	areachatlist8 = "僅自己"
ralltitle2				= "這個模塊當你進入副本時會通知在|cff00ff00當前區域|r的相關成就。它也可以在你選擇首領為目標時提示任何一個成就的條件。附：'|cffff0000插件不會追蹤|r'意味著插件無法追蹤當前成就並且如果成就失敗也不會通知你，'|cffff0000不是來自首領|r' - 成就的條件不是擊殺首領，它可能是一些物件或其他的東西。在當前框體中你可以查看當前區域中所有的小隊可用成就。"
ralltxt1				= "它當你進入副本時通知："
ralltxt2				= "只是未完成的成就"
ralltxt3				= "全部成就，包括已完成的"
ralltxt4				= "只是“英雄/團隊的榮耀”的所需未完成成就"
ralltxt5				= "只是“英雄/團隊的榮耀”的所需成就，包括已完成的"
ralltxt6				= "全版本 - 我所需的成就，包括普通/英雄首領的擊殺等"
ralltxt7				= "它當你選擇首領為目標時通知："
ralltxt8				= "只是未完成的成就"
ralltxt9				= "全部成就，包括已完成的"
ralltxt10				= "只是“英雄/團隊的榮耀”的所需未完成成就"
ralltxt11				= "只是“英雄/團隊的榮耀”的所需成就，包括已完成的"
ralltxt12				= "全版本 - 我所需的成就，包括普通/英雄首領的擊殺等"
ralltxton				= "（啟用）"
ralltxtoff				= "（禁用）"
rallzonenotfound			= "在數據庫中沒有發現當前區域。"
rallachiverepl1				= "未完成的成就"
rallachiverepl2				= "你已經完成了在這個區域中的所有成就。"
rallachiverepl3				= "您現在的區域不是一個團隊副本或英雄地下城。"
rallachiverepl4				= "全部成就列表"
rallachiverepl5				= "數據庫中未找到此區域的小隊成就。"
rallachiverepl6				= "成就追蹤已禁用。"
rallachiverepl7				= "發現超過10個以上的成就（|cff00ff00%s|r）。在插件選項窗口中列出全部的可用成就（/achr - 區域列表）"
rallachiverepl8				= "在“英雄/團隊的榮耀”中未完成的成就。"
rallachiverepl9				= "您已經完成了此區域“英雄/團隊的榮耀”中的所有成就。"
rallachiverepl10			= "全部“英雄/團隊的榮耀”所需的成就列表"
rallachiverepl11			= "“英雄/團隊的榮耀”所需的成就在此區域未找到。"
rallachiverepl12			= "全部未完成的成就列表"
rallachiverepl13			= "未完成的成就"
rallachiverepl14			= "全部的成就列表"
rallachiverepl15			= "沒有在當前首領設置選項中發現成就。"
rallachiverepl16			= "在“英雄/團隊的榮耀”中未完成的成就"
rallachiverepl17			= "全部“英雄/團隊的榮耀”所需的成就列表"
rallachiverepl18			= "全部未完成的成就列表"
rallnoaddontrack			= "插件不會追蹤"
rallnotfromboss				= "不是來自首領"
rallmenutxt1				= "    在當前區域中的可用成就列表"
rallachdonel1				= "完成"
rallachdonel2				= "未完成"
rallsend				= "發送"
rallwhisper				= "密語："
rallmenutxt2				= "    所選區域的成就列表"
rallbutton2				= "選擇其他區域"
ralltitle3				= "這個模塊在選定區域中顯示可用的成就。你可以發送這些信息到聊天頻道。"
ralltxt13				= "全版本 - 此區域的全部成就"
rallbutton3				= "<<< 返回設置"
rallmanualtxt1				= "版本："
rallmanualtxt2				= "難度："
rallmanualtxt3				= "區域："
rallachiverepl19			= "全部列表中的所有成就"
ralltooltiptxt				= "顯示提示"
ralltooltiptxt2				= "RA：找到%s成就"
ralltooltiptxt21			= "RA：找到的成就"
ralltooltiptxt3				= "更多信息：/raida"
rallchatshowboss			= "顯示在聊天頻道"
rallmenutxt3				= "    小隊成就戰術"
ralltitle33				= "'戰術：/raida'在聊天頻道顯示成就的戰術可能會造成困難。在這裏你可以看到所有的戰術，如果你是首次進入地下城它會非常有用。你可以編輯文本在聊天頻道發送。所有更改將使用於所有人物。\n附1：請將您的戰術或意見發送給我，讓這個插件可以幫助更多的人！\n附2：在簡體中文本地化中發現大量錯誤？請通過Curse的項目頁面寫郵件給我來糾正他們！"
ralltactictext1				= "選擇的成就："
ralltactictext2				= "需要戰術"
ralltactictext3				= "戰術：/raida"
ralluilooktactic1			= "顯示戰術"
rallnotfoundachiv1			= "沒有發現未完成的成就"
rallnotfoundachiv2			= "沒有成就"
ralltacticbutsave1			= "應用更改"
ralltacticbutsave2			= "恢復默認戰術"
ralluilooktactic3			= "|cffff0000無戰術|r，這個成就可能很容易通過描述理解。如果你想|cff00ff00添加自己的戰術 - 在這裏輸入文本|r"
ralluilooktactic4			= "更改保存成功。"
ralluilooktactic5			= "戰術"
ralldifparty				= "隊伍"
ralldifraid				= "團隊"
ralldefaulttacticmain1			= "當可以擊殺首領時插件會在聊天頻道通知你！"
ralldefaulttacticmain2			= "註意：你的寵物或圖騰可能會造成這個成就失敗！"
ralldefaulttacticmain3			= "成就失敗將保存副本ID，並且在那一天你不能重置它"
rallachievekologarnhp1			= "80萬 - 1百萬"
rallachievekologarnhp2			= "3百萬 - 4百萬"
rallglory = "榮耀"

ralldefaulttactic1			= "在開始時整個街道約有85個僵屍，所以你需要：\n1.殺死1號首領。\n2.1.將2號首領拖到市政廳的大門口（並不是讓你把它帶到裏面，只是把他帶到附近的步驟）。\n3.2.給它一兩分鐘時間直到你看到僵屍重生，然後殺了他。\n4.3.和阿薩斯對話，然後清理市政廳，殺死3號首領，並再次和阿薩斯交談讓他打開書櫃。\n5.1到2個DPS會回到你殺死2號首領的地方，其他隊員繼續向前走\n6.同時在這兩個位置開始殺死僵屍直到你獲得成就。"
ralldefaulttactic2			= "僅停留在樓梯上並殺死小怪。諾沃司的護盾降下之後不會有更多的小怪刷新了並且你會和他交戰。所以再也不需要你註意樓梯上的小怪了。"
ralldefaulttactic3			= "描述：有時首領會對50碼範圍內的敵人造成傷害。每個受到該傷害的敵人都會使首領堆疊1層'吞噬'效果。\n戰術：全力輸出首領。"
ralldefaulttactic4			= "在首領戰鬥過程中殺死必要數量的恐龍。"
ralldefaulttactic5			= "在他上到平臺並封鎖門之前和首領開戰。"
ralldefaulttactic6			= "不要讓蛇攻擊某個人很長一段時間！殺死他們或者迅速的全力輸出首領。"
ralldefaulttactic7			= "你必須打斷所有施放的'變形'法术，施法時間會隨著他的血量降低而加快。"
ralldefaulttactic8			= "為了獲得埃克殘渣的減益效果，你需要被埃克正面錐形範圍的技能擊中：埃克噴吐。在那之後在沒有死亡的情況下殺死最後的首領。"
ralldefaulttactic9			= "事實上，刺穿法術不會對威脅值最高的目標施放，所以你可能需要2個坦克。所有隊伍玩家都受到刺穿之後擊殺首領。"
ralldefaulttactic10			= "首領在50%開始召喚軟泥並在25%停止。等待那些小軟泥變成你需要殺死的那些鐵淤泥。"
ralldefaulttactic11			= "極寒冰霜每2-3秒堆疊一次。你可以使用的薩鋼來阻擋首領的視線或者驅散它或者非常迅速的全力輸出首領。"
ralldefaulttactic12			= "你必須在你的全部隊員沒有被任何掉落的冰柱擊中的情況下通過第三個首領之前的冰隧道。\n你可以看到他們即將在那裏落下是因為他落下約5秒之前會出現一個藍色的圓圈。"
ralldefaulttactic13			= "你已經清理完了最後的巷子在瑪爾加尼斯的前面，你進入了一個區域看起來不像是被天災占領過的。有2條路，你可以選擇向右走到瑪爾加尼斯或者你可以向左走。恆龍墮落者是在左邊，如果你的計時器上仍然有時間。"
ralldefaulttactic14			= "描述：每30秒左右，首領將你的隊伍成員之一作為目標施放一個通道法術並生成一個腐化的殘缺之魂，他應該做的事情是跑的離首領盡可能的遠，因為當那些殘缺之魂生成他們就會開始向布朗吉姆移動，並且當他們接觸到首領時消失。當首領的血量低於35%時他會傳送到房間的中心並停止移動。\n戰術：在輸出他之前在他的平臺周圍風箏他那是正確的，並等待直到全部的4個靈魂殘片都生成，然後迅速的全力輸出他。腐化的殘缺之魂可以被減速。"
ralldefaulttactic15			= "你必須輪流打斷施放的每個'魅影衝擊'。"
ralldefaulttactic16			= "在戰鬥中首領每45秒進入一次免疫狀態，等待並在沒有摧毀混沌裂隙的情況下殺死他（註意範圍傷害技能）。"
ralldefaulttactic17			= "個人成就。劇寒每2秒在玩家身上疊加一層。移動來移除這個效果。如果你站著超過5秒沒有移動 - 你會讓你的成就失敗。註意，凱瑞史卓莎有另一個將玩家凍結10秒的技能，驅散它。"
ralldefaulttactic18			= "描述：第二個首領是隨機的，它將會是銀白告解者帕爾璀絲或『純淨者』埃卓克。帕爾璀絲在戰鬥中召喚的只是25個回憶中的1個。"
ralldefaulttactic19			= "描述：'制裁之錘' - 擊暈一名敵人，使其更易受到公正之錘的傷害，並且在6秒內無法移動或攻擊。\n'公正之錘' - 擲出一把錘子攻擊敵人造成14000點神聖傷害。若目標未受到制裁之錘的影響，錘子將會被接住並且丟回給施法者。\n戰術：輸出首領至25000血量並等待直到有人被他擊暈，驅散那擊暈並且玩家的技能藍上會只出現1個法術'反擲一柄錘子'，使用它！"
ralldefaulttactic20			= "當他開始施放食屍鬼爆炸時殺死食屍鬼或者風箏走首領。"
ralldefaulttactic21			= "'冰霜之墓' - 將目標困在寒冰障壁中。只要殺死首領而不用擊碎冰霜之墓，首領將會對隨機玩家施放。"
ralldefaulttactic22			= "首領附近有2個天譴巨怪，你需要他們中的其中1個來完成成就。首領在50%時會開始施放'劍之儀式'，你要在劍之儀式爆炸擊中他之後殺死天災巨人。"
ralldefaulttactic23			= "要殺死古拉夫你要拔出3根魚叉同時使用魚叉炮。"
ralldefaulttactic24			= "如果你殺首領不夠迅速 - 他會在自己身上施放'災禍'，你不能在首領存在這個效果的情況下受到傷害。只要在他施放這個之前迅速的全力輸出首領。"
ralldefaulttactic25			= "在他們正試圖與首領合併時迅速殺死膿液水珠。"
ralldefaulttactic26			= "防禦控制水晶是位於墻壁上的，不要點擊它們並且不要讓小怪破壞監獄的封印。"
ralldefaulttactic27			= "當你每次參與這個地下城，你會遇見的只是存在的6個中的其中2個首領。"
ralldefaulttactic28			= "如果安卡哈守護者靠近首領 - 首領將變得免疫所有傷害，只需要風箏首領召喚的安卡哈守護者並迅速殺死首領。"
ralldefaulttactic29			= "有3平臺畢亞格林將軍他會在那裏停下並且獲得間歇電能。在他獲得間歇電能的同時與他開戰。"
ralldefaulttactic30			= "首領有時會擊打渥克瀚的鐵砧，創造出2個熔岩魔像。在他創造4個魔像之前殺死他。"
ralldefaulttactic31			= "在第二階段（空中）奧妮克希亞會施放深呼吸，遠離能夠受到她深呼吸的方向（她將通過整個房間的對角線），如果你的輸出使她的血掉的足夠迅速 - 她不會施放這個法術。"
ralldefaulttactic32			= "奧妮克希亞在65%進入第二階段，當她離開地面時你有10秒的時間跑入洞穴內迫使孵化出幼龍。我們可以慢慢殺死他們，但是他們孵化很迅速。所有人聚集起來後使用群體傷害技能殺死他們。"
ralldefaulttactic33			= "『穿刺者』戈莫克會對玩家投擲狗頭人奴隸。不要將他們中的%s個殺死。沒有範圍技能，沒有寵物，沒有任何形式的濺射傷害。讓他們一直活著經過蟄猛巨蟲的戰鬥，當冰嚎死亡時仍然活著來獲得的成就。"
ralldefaulttactic34			= "首領將周期性的下潛（只有當他>35%血量時）並產生無法避免的甲蟲群。刷新的甲蟲群使用盡可能多的坦克同時坦克他們。沒有範圍技能，沒有寵物，沒有任何形式的濺射傷害。當越來越多的甲蟲群刷新出來，請保持這些甲蟲群活著通過第二次下潛。當第三次下潛時，所有小組聚集起來後使用群體傷害技能殺死他們。在第三次下潛期間墻壁附近會生成的更多數量的甲蟲群，你會有30秒的時間來殺死他們。你不用殺死首領來取得成就。"
ralldefaulttactic35			= "這是一個個人成就。你必須避免熔岩打擊，而不是火墻。熔岩打擊是一個對範圍目標傷害的技能，在戰鬥中將它查找出來！或者在戰鬥開始時死亡將會獲得它:)"
ralldefaulttactic36			= "在第二階段期間（首領到達50%以後）將會出現一些奧核領主，當他們中的其中1個死亡後會留下一個飛行圓盤，你需要占用它並且對永恆之裔造成最後的致命一擊。"
ralldefaulttactic37			= "有兩種方法獲得這個成就：1.不要殺死信奉者（沒有寵物，沒有範圍技能，沒有任何形式的濺射傷害。）2.從距離首領15碼以上的地方殺死信奉者。"
ralldefaulttactic38			= "描述：泰迪斯會施放'兩極移形'：對周圍所有敵方目標設置一個負級效應或正級效應。與身邊玩家擁有同級效應的玩家可使彼此造成的傷害提高。與身邊玩家擁有不同級效應的玩家將對周圍其他團隊成員造成傷害並且成就失敗。\n戰術：團隊分成2個區域（+ 和 -），極性轉化之後跑向那個區域取決於你新的減益效果。"
ralldefaulttactic39			= "拉出憎惡體擊殺直到插件告訴我們已經殺死足夠的數量。"
ralldefaulttactic40			= "在戰鬥中首領將會對玩家施放穿刺（10人1個和25人3個），必須非常迅速的擊殺他們。"
ralldefaulttactic41			= "主坦克拉住所有參戰的怪物，除了副坦克拉住已變形的參戰的怪物，不斷的風箏他們之外。不用對參戰的怪物造成傷害，不用對首領造成傷害。當所有5種參戰的怪物我們都至少有一個時，對首領造成傷害來開始第2階段。參戰的怪物都必須存活直到首領死亡所以還是不要對他們造成傷害，即使在第2階段。5個參戰的怪物是：教派狂熱者，畸形狂熱者，復生的狂熱者，教派追隨者，復生的追隨者。（亢奮的追隨者不計入這個成就，所以把他們全部殺死！）"
ralldefaulttactic42			= "非常容易的戰鬥。每個單獨的人請確保沒有登陸過敵方炮艦超過兩次，不要再一次登陸中派遣太多的人。"
ralldefaulttactic43			= "氣體孢子將產生3次，然後首領會使用一次範圍傷害技能移除所有堆疊的層數。為了堆疊一層的25%的暗影抗性，你需要站在一個具有孢子的人附近直到他爆炸。獲得兩層堆疊，但不能獲得三層。"
ralldefaulttactic44			= "首領會隨機在一個玩家身上施放疾病。不要驅散它，並且當它消失時，它會生成一個小軟泥。盡量保持小軟泥怪遠離其他所有的小軟泥怪。如果兩個小軟泥怪彼此靠近，它們將融合為一個大軟泥怪。如果它融合了超過5個小軟泥怪那麽大軟泥怪將會爆炸並且成就失敗。所以請快速殺死首領並確保不合並小軟泥怪。"
ralldefaulttactic45			= "一個人將會變成一個醜陋的大怪物（畸變的憎惡體）並吞食軟泥獲得能量。只要這個人一直都不使用'反芻軟泥'並且我們獲得勝利。不能驅散這個怪物身上的疾病。"
ralldefaulttactic46			= "有3種情況（由每個被增強的首領所造成）這可能導致你失去這個成就。\n\n瓦拉納爾：強力震擊漩渦。當他施放他時，你必須迅速分散開彼此相鄰以避免多人同時被擊飛。\n\n泰爾達朗：地獄烈焰之球。當這被施放時，成為它目標的玩家需要逃跑。\n\n凱雷希斯：強力暗影長矛。你的凱雷塞斯坦克要在任何時候都堆疊4層的暗影共鳴減益效果。"
ralldefaulttactic47			= "獲取該成就需要確保每次生成的%s個傳送門都有人進入。只要所有的都被占用他不管是誰占用了他們。雖然當治療占用他們時是最好的。插件將不會在英雄難度追蹤。"
ralldefaulttactic48			= "'秘能連擊' - 每6秒以秘法能量衝擊周圍的所有敵人，每堆疊一次效果可使其受到的所有魔法傷害提高10%。要重置堆疊的層數你必須使用冰霜之墓來阻擋首領的視線。這對坦克來說是很難的，他們的輪換相當復雜。或者在她<35%血量後的35秒內殺死她。"
ralldefaulttactic49			= "這個成就必須在首領到達70%之前完成，所以在這個階段中不用對首領造成傷害。副坦克將所有參戰的怪物拉住，應該沒有其他人在附近的任何位置。不用對參戰的怪物造成傷害。唯一一個會獲得亡域瘟疫的應該是副坦克，如果他獲得了那麽驅散他，直到它回到了參戰的怪物身上。如果其他人以未知方式獲得了亡域瘟疫，在驅散它之前他們應該靠近參戰的怪物。插件將在堆疊30層時宣布，然後繼續進行正常的戰鬥！"
ralldefaulttactic50			= "邪惡靈魂出現在第三階段（<40%）。當他們貼近玩家時他們會爆炸，所以每個人都應該從他們附近跑開。所有遠程DPS在範圍內盡可能快的殺死他們。"
ralldefaulttactic51			= "這個成就能夠單獨完成。你可以拉出許多黑暗符文守護者並殺死他們，使用遊戲的成就追蹤器監視它。"
ralldefaulttactic52			= "個人成就。石毀車的乘客可以被彈射到烈焰戰輪上，在那裏他們可以殺死防禦炮塔，你必須造成最後的致命一擊來獲得成就。"
ralldefaulttactic53			= "玩家可以從石毀車彈射到烈焰戰輪上來除去它的炮塔。除去所有炮塔來激活回路過載，那麽烈焰戰輪昏迷，使他受到的傷害提高50%並清除全部堆疊的速度提升效果。這個成就要求團隊忽略這個攻城機械師的技能。"
ralldefaulttactic54			= "'熔渣之盆' - 隨機衝向一名敵方目標並抓住對方，將其丟進施法者的熔渣之盆。該目標將無法攻擊施法者且每秒受到0點火焰傷害，持續10秒。主坦克是不會遭受這個技能的。"
ralldefaulttactic55			= "參戰的鐵之傀儡站在伊格尼司'灼燒'留下的火焰上可以獲得受熱效果。一旦熾熱堆疊至10層，鐵之傀儡會獲得熔化效果，持續20秒。如果在這段時間內將他們風箏到一個水池裏，他們將結束熔化效果而被15秒的脆裂替代。用一個單體超過5000或者更高的傷害的技能處理脆裂的鐵之傀儡將它擊碎，引發一次爆炸。最後一步是在5秒的時間內致使2個或更多的鐵之傀儡這樣做將會給予這個成就。"
ralldefaulttactic56			= "使用單體目標傷害技能攻擊（避免DOT效果）並把所有的黑暗符文守護者削減至不少於15000血量。地面階段結束之前面對銳鱗，他將會直接在他面前的區域使用烈焰龍息。所有的統計數字不會重置。"
ralldefaulttactic57			= "在2次地面階段內使首領血量到達50%。"
ralldefaulttactic58			= "成就的描述不是正確的，很難理解是什麽使他失敗的。"
ralldefaulttactic59			= "在普通難度中請不要讓任何XS-013廢料機器人靠近XT-002拆解者並使其獲得治療。每隔25%血量，這些機器人會在心臟暴露階段時產生。他們無視仇恨並不斷朝著拆解者移動。廢料機器人可以被減速和定身。"
ralldefaulttactic60			= "每隔25%血量，XT-002拆解者會心臟暴露並產生額外的怪物，其中包括一些XE-321炸彈機器人和許多XS-013廢料機器人它將朝著XT-002拆解者移動。當XE-321炸彈機器人被殺害時，他們的爆炸會對他們附近的一切都造成傷害。"
ralldefaulttactic61			= "要求玩家當鐵之議會最後一個首領被殺害時受到鐵靴精鍊藥劑效果的影響。鐵靴精鍊藥劑可以在風暴群山的歐拉特·酒膽（部落）或洛克·銳頦（聯盟）處購買。"
ralldefaulttactic62			= "所有人都站在近戰範圍，除了3個特別指派的人，他們將風箏集束目光。"
ralldefaulttactic63			= "殺死手臂並等待他們重生。不要對首領造成任何傷害。"
ralldefaulttactic64			= "輸出首領至%s血量，同時殺死雙臂。"
ralldefaulttactic65			= "戰鬥開始1分鐘後將召喚出野性防禦者，堆疊有8層的野性精華。它可以以1層堆疊的代價復活自己，所以這個成就需要殺死野性防禦者9次。最後一次復活之後準備擊殺首領，激怒將要接近。"
ralldefaulttactic66			= "個人成就。無論你站在那裏風暴威能的效果會在一個玩家身上存在30秒，但暖適之火和星光似乎是有隨即位置的界限，你必須全部獲得那3種效果。"
ralldefaulttactic67			= "破壞所有閃霜救出那些困在其中NPC"
ralldefaulttactic68			= "所有團隊成員必須站在雪堆上避免每一個閃霜。他們會在冰柱倒在地上後生成。"
ralldefaulttactic69			= "不允許任何一個團隊成員堆疊刺骨之寒超過2層以上的情況下殺死霍迪爾。隨著時間的推移整個團隊堆疊刺骨之寒的層數在增加，並且隨著時間的推移每堆疊一層都會造成傷害。移動或靠近參戰法師召喚的暖適之火會降低堆疊的層數。近距離的凍結可以群體驅散並且可以通過移動來清除堆疊的層數避免閃霜時變得更難以應對。"
ralldefaulttactic70			= "你有3分鐘的時間在他打碎他的珍貯箱之前殺死首領。"
ralldefaulttactic71			= "一旦團隊完成了提出的挑戰並且激活了索林姆，他每隔15秒就會施放閃電充能。它似乎是一個錐形的攻擊，源於索林姆對競技場周圍的球體施放的一道閃電。"
ralldefaulttactic72			= "團隊中的小組通過提出挑戰後會遇到這兩種怪物。但是一旦你殺死首領所有的團隊成員將獲得這個成就。"
ralldefaulttactic73			= "黑暗符文戰爭使者 - NPC是在第一階段中產生的，他的敏銳光環會給予'光環'效果。必須將這個NPC'精神控制'給隊伍提供這個光環效果並在這時擊敗索林姆。光環的半徑是40碼。"
ralldefaulttactic74			= "將會有6波小怪參與戰鬥。殺死5波然後在至少還有一波存活的情況下全力輸出首領。"
ralldefaulttactic75			= "整個團隊必須避開來自第1第4階段的環罩地雷，第2第4階段的火箭攻擊和第3階段的炸彈機器人爆炸。這個成就可以通過累計完成，因此請避開所有的炸彈機器人將那個條件完成，並考慮下周團隊側重於環罩地雷或火箭攻擊。"
ralldefaulttactic76			= "第3階段的其中一個突襲機器人必須保留並存活到第4階段。在第4階段中，彌米倫在某個位置再次施放致命的火箭攻擊，在這之前的3秒可以見到法術預警。風箏突襲機器人進入這塊小區域中。"
ralldefaulttactic77			= "困難模式。不要殺死任何薩鋼蒸汽，等待他們轉換成薩隆聚惡體，在殺了它之後 - 擊敗首領。"
ralldefaulttactic78			= "在尤格薩倫的第2階段遇到薩拉時使用/親吻表情。宏：\n/目標 薩拉\n/親吻"
ralldefaulttactic79			= "第2階段過程中，將會在尤格薩倫旁邊打開傳送門。當你進入後，你會經歷3個幻想的其中一個。"
ralldefaulttactic80			= "你開始戰鬥時有100%的理智，當被他的技能擊中時下降。戰鬥過程中，將生成理智之井，當你站在他們的附近隨著時間的推移你的理智會得到恢復（只有當你請求芙蕾雅幫助你時）。當一個人的理智到達0%，他們會被尤格薩倫精神控制直到他們中的其中一個死亡。"
ralldefaulttactic81			= "當崩陷之星死亡時會形成黑洞。這個成就是指風箏活体星座，使他們同時進入黑洞來關閉它。"
ralldefaulttactic82			= "每次笨重的歐弗對一個玩家使用他的沖鋒技能，礦坑老鼠會隨機數量的出現在撞擊木材堆的玩家周圍。統計的數量不會被重置，所以你可以一點一點積累。"
ralldefaulttactic83			= "你需要避免收割者原型機在清理小怪過程中受到任何傷害（可能是錯誤）並且於首領戰鬥中獲得這個成就（收割者原型機是免疫火焰傷害的 - 清理首領戰鬥中的小怪）。"
ralldefaulttactic84			= "個人成就。躲避所有首領在第二階段中施放的火焰障壁。"
ralldefaulttactic85			= "在首領每次'窒息術'讀條之後他會治療，立即中斷他的'暫緩死刑'。"
ralldefaulttactic86			= "痛苦的軍官（不是首領）會施放'穢邪活化' - 打斷他施放的所有穢邪活化。"
ralldefaulttactic87			= "當仆從參與戰鬥後 - 使其中一個進入噴泉裏被殺死。獲取這個成就不需要殺死首領。"
ralldefaulttactic88			= "不要殺死不屈的巨獸，直到你在第3階段獲得潮汐奔騰的效果。"
ralldefaulttactic89			= "讓暮光狂熱者1個1個的進化，並且你可以盡可能快的殺死他們（在他們殺死你們的坦克之前）。如果你們沒有阻擋一條射線他們就會得到進化。"
ralldefaulttactic90			= "個人成就。當首領施放'靜滯之握'時跳起 - 這樣你就不會被他的技能纏住，取得這個成就最好的方式就是整個戰鬥過程中都跳起。"
ralldefaulttactic91			= "為了讓他受到影響，你必須殺死一個靠近他的惡性穴居怪。註意：'莫德古得的詛咒' - 會使造成的傷害提高100%"
ralldefaulttactic92			= "所有隊員都將獲得成就。在副本中有5個以上的寶珠，你必須得到的僅為其中5個。例如，上述的其中2個在第2個首領的平臺上，得到他們 - 你必須在首領戰鬥中利用旋風。"
ralldefaulttactic93			= "當你在50%進入'靈魂世界'時，會生成一個黑暗先驅者。每隔幾秒鐘，將產生一個靈魂碎片向黑暗先驅者移動並在靠近時治療它。讓他們移動到火焰路徑上轉化為燃燒之魂。殺死3個時你會獲得成就而不是殺死首領！"
ralldefaulttactic94			= "在你第一次進行這個成就時你只能完成其中一半，而另外一半需要在下一次完成。如果你想被咬（或不想被咬）那麽現在說出來。我們需要更多的傷害輸出，使較少的人會被咬。"
	


end


end