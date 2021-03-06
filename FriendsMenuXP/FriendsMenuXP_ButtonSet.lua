--[[
-- ���Ҽ��˵���˵, �̳�UIDropDownTemplate���岻��, ֻ����Ϊһ����������, Button��Text��������ʾ����
--]]

--[[
	text,                                              --��ť����
	textHeight,                                        --��ť�����С
	icon,                                              --��ťͼƬ·��
	tCoordLeft, tCoordRight, tCoordTop, tCoordBottom,  --��ťͼƬ����Բ���
	textR, textG, textB,                               --��ť�����ɫ
	tooltipText,                                       --��ʾ��Ϣ
	show,                                              --�ж��Ƿ���ʾ�ð�ť�ĺ���
	func,                                              --�����ť�����еĲ���
	notClickable,                                      --���ɵ��(��ɫ��ť)
	justifyH,                                          --���ֶ��䷽ʽ, LEFT��CENTER
	isSecure,                                          --�Ƿ��ǰ�ȫ��ť
	attributes,                                        --��ȫ��ť������, ��ʽΪ"����1:ֵ1; ����2:ֵ2"
]]

--{ "WHISPER", "INVITE", "TARGET", "IGNORE", "REPORT_SPAM", "GUILD_PROMOTE", "GUILD_LEAVE", "CANCEL" };
function NoSelfShow(name) return UnitName("player")~=name; end

FriendsMenuXP_Buttons = {};

FriendsMenuXP_Buttons["WHISPER"] = {
    text = WHISPER,
    func = function(name) ChatFrame_SendTell(name); end,
    --show = NoSelfShow,
}

FriendsMenuXP_Buttons["POP_OUT_CHAT"] = {
    text = POP_OUT_CHAT,
    func = function(name)
        ChatFrame_SendTell(name); end,
    --show = NoSelfShow,
}

FriendsMenuXP_Buttons["INVITE"] = {
    text = PARTY_INVITE,
    func = function(name) InviteUnit(name); end,
    show = NoSelfShow,
}

FriendsMenuXP_Buttons["TARGET"] = {
    text = TARGET,
    isSecure = 1,
    attributes = "type:macro;macrotext:/targetexact $name$",
    func = function(name)
        if(UnitName("target")~=name and GetUnitName("target", true)~=name) then
            DEFAULT_CHAT_FRAME:AddMessage(string.gsub(FRIENDS_MENU_XP_CANNOT_TARGET, "%$name%$", name), 1,1,0);
        end
    end,
}

FriendsMenuXP_Buttons["IGNORE"] = {
    text = IGNORE,
    func = function(name) AddOrDelIgnore(name); end,
    show = function(name)
        if(name == UnitName("player")) then return end;
        for i = 1, GetNumIgnores() do
            if(name == GetIgnoreName(i)) then
                return nil;
            end
        end
        return 1;
    end,
}

FriendsMenuXP_Buttons["CANCEL_IGNORE"] = {
    text = CANCEL..IGNORE,
    func = function(name) AddOrDelIgnore(name); end,
    show = function(name)
        if(name == UnitName("player")) then return end;
        for i = 1, GetNumIgnores() do
            if(name == GetIgnoreName(i)) then
                return 1;
            end
        end
    end,
}

--7.0 ["REPORT_PLAYER"] = { "REPORT_SPAM", "REPORT_BAD_LANGUAGE", "REPORT_BAD_NAME", "REPORT_CHEATING" },
FriendsMenuXP_Buttons["REPORT_SPAM"] = {
    text = FMXP_BUTTON_REPORT_PLAYER_FOR..REPORT_SPAMMING,
    func = function(name, dropdown)
        local dialog = StaticPopup_Show("CONFIRM_REPORT_SPAM_CHAT", name);
        if ( dialog ) then
            dialog.data = dropdown.unit or tonumber(dropdown.lineID);
        end
    end,
    show = function(name, dropdown) return dropdown.lineID and CanComplainChat(dropdown.lineID) end,
}

FriendsMenuXP_Buttons["REPORT_BAD_LANGUAGE"] = {
    text = FMXP_BUTTON_REPORT_PLAYER_FOR..REPORT_BAD_LANGUAGE,
    func = function(name, dropdown)
        local dialog = StaticPopup_Show("CONFIRM_REPORT_BAD_LANGUAGE_CHAT", name);
        if ( dialog ) then
            dialog.data = dropdown.unit or tonumber(dropdown.lineID);
        end
    end,
    show = function(name, dropdown) return dropdown.lineID and CanComplainChat(dropdown.lineID) end,
}

FriendsMenuXP_Buttons["REPORT_BAD_NAME"] = {
    text = FMXP_BUTTON_REPORT_PLAYER_FOR..REPORT_BAD_NAME,
    func = function(name, dropdownFrame)
        if ( GMEuropaComplaintsEnabled() and not GMQuickTicketSystemThrottled() ) then
            if (dropdownFrame.unit) then
                HelpFrame_SetReportPlayerByUnitTag(ReportPlayerNameDialog, dropdownFrame.unit);
            elseif (tonumber(dropdownFrame.lineID)) then
                HelpFrame_SetReportPlayerByLineID(ReportPlayerNameDialog, tonumber(dropdownFrame.lineID));
            elseif (dropdownFrame.battlefieldScoreIndex) then
                HelpFrame_SetReportPlayerByBattlefieldScoreIndex(ReportPlayerNameDialog, dropdownFrame.battlefieldScoreIndex);
            end

            HelpFrame_ShowReportPlayerNameDialog();
        else
            UIErrorsFrame:AddMessage(ERR_REPORT_SUBMISSION_FAILED , 1.0, 0.1, 0.1, 1.0);
            local info = ChatTypeInfo["SYSTEM"];
            if ( dropdownFrame.chatFrame ) then
                dropdownFrame.chatFrame:AddMessage(ERR_REPORT_SUBMISSION_FAILED, info.r, info.g, info.b);
            else
                DEFAULT_CHAT_FRAME:AddMessage(ERR_REPORT_SUBMISSION_FAILED, info.r, info.g, info.b);
            end
        end
    end,
    show = function(name, dropdown) return dropdown.lineID and CanComplainChat(dropdown.lineID) end,
}

FriendsMenuXP_Buttons["REPORT_CHEATING"] = {
    text = FMXP_BUTTON_REPORT_PLAYER_FOR..REPORT_CHEATING,
    func = function(name, dropdownFrame)
        if ( GMEuropaComplaintsEnabled() and not GMQuickTicketSystemThrottled() ) then
            if (dropdownFrame.unit) then
                HelpFrame_SetReportPlayerByUnitTag(ReportCheatingDialog, dropdownFrame.unit);
            elseif (tonumber(dropdownFrame.lineID)) then
                HelpFrame_SetReportPlayerByLineID(ReportCheatingDialog, tonumber(dropdownFrame.lineID));
            elseif (dropdownFrame.battlefieldScoreIndex) then
                HelpFrame_SetReportPlayerByBattlefieldScoreIndex(ReportCheatingDialog, dropdownFrame.battlefieldScoreIndex);
            end

            HelpFrame_ShowReportCheatingDialog();
        else
            UIErrorsFrame:AddMessage(ERR_REPORT_SUBMISSION_FAILED , 1.0, 0.1, 0.1, 1.0);
            local info = ChatTypeInfo["SYSTEM"];
            if ( dropdownFrame.chatFrame ) then
                dropdownFrame.chatFrame:AddMessage(ERR_REPORT_SUBMISSION_FAILED, info.r, info.g, info.b);
            else
                DEFAULT_CHAT_FRAME:AddMessage(ERR_REPORT_SUBMISSION_FAILED, info.r, info.g, info.b);
            end
        end
    end,
    show = function(name, dropdown) return dropdown.lineID and CanComplainChat(dropdown.lineID) end,
}

FriendsMenuXP_Buttons["CANCEL"] = {
    text = CANCEL,
}

FriendsMenuXP_Buttons["ADD_FRIEND"] = {
    text = FMXP_BUTTON_ADD_FRIEND,
    func = function (name) AddFriend(name); end,
    show = function(name)
        if(name == UnitName("player")) then return end;
        for i = 1, GetNumFriends() do
            if(name == GetFriendInfo(i)) then
                return nil;
            end
        end
        return 1;
    end,
}

FriendsMenuXP_Buttons["REMOVE_FRIEND"] = {
    text = REMOVE_FRIEND,
    func = function (name) RemoveFriend(name); end,
    show = function(name)
        if(name == UnitName("player")) then return end;
        for i = 1, GetNumFriends() do
            if(name == GetFriendInfo(i)) then
                return true;
            end
        end
    end,
}

FriendsMenuXP_Buttons["SET_NOTE"] = {
    text = SET_NOTE,
    func = function (name)
        FriendsFrame.NotesID = name;
        StaticPopup_Show("SET_FRIENDNOTE", name);
        PlaySound(840); -- PlaySound("igCharacterInfoClose");
    end,
    show = function(name)
        if(name == UnitName("player")) then return end;
        for i = 1, GetNumFriends() do
            if(name == GetFriendInfo(i)) then
                return true;
            end
        end
    end,
}

FriendsMenuXP_Buttons["GUILD_LEAVE"] = {
    text = GUILD_LEAVE,
    func = function (name) StaticPopup_Show("CONFIRM_GUILD_LEAVE", GetGuildInfo("player")); end,
    show = function(name)
        if name ~= UnitName("player") or (GuildFrame and not GuildFrame:IsShown()) then return end;
        return 1;
    end,
}

FriendsMenuXP_Buttons["GUILD_PROMOTE"] = {
    text = GUILD_PROMOTE,
    func = function (name) local dialog = StaticPopup_Show("CONFIRM_GUILD_PROMOTE", name); dialog.data = name; end,
    show = function(name)
        if ( not IsGuildLeader() or not UnitIsInMyGuild(name) or name == UnitName("player") or (GuildFrame and not GuildFrame:IsShown()) ) then return end;
        return 1;
    end,
}

FriendsMenuXP_Buttons["PVP_REPORT_AFK"] = {
    text = PVP_REPORT_AFK,
    func = function (name) ReportPlayerIsPVPAFK(name); end,
    show = function(name)
        if ( UnitInBattleground("player") == 0 or GetCVar("enablePVPNotifyAFK") == "0" ) then
            return;
        else
            if ( name == UnitName("player") ) then
                return;
            elseif ( not UnitInBattleground(name) ) then
                return;
            end
        end
        return 1;
    end,
}

FriendsMenuXP_Buttons["SET_FOCUS"] = {
    text = SET_FOCUS,
    isSecure = 1,
    attributes = "type:macro;macrotext:/targetexact $name$\n/focus\n/targetlasttarget",
}

FriendsMenuXP_Buttons["PROMOTE"] = {
    text = PARTY_PROMOTE,
    func = function (name) PromoteToLeader(name, 1); end,
    show = function (name)
        if (GetNumGroupMembers() > 0 and (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player"))) then
            return 1
        end
    end,
}

FriendsMenuXP_Buttons["LOOT_PROMOTE"] = {
    text = LOOT_PROMOTE,
    func = function (name) SetLootMethod("master", name, 1); end,
    show = function (name)
        if (GetNumGroupMembers() > 0 and (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player"))) then
            return 1
        end
    end,
}

FriendsMenuXP_Buttons["ACHIEVEMENTS"] = {
    text = FMXP_BUTTON_ACHIEVEMENTS,
    func = function (name) InspectAchievements(name); end,
}

FriendsMenuXP_Buttons["SEND_WHO"] = {
    text = FMXP_BUTTON_SEND_WHO,
    func = function (name) SendWho("n-"..name); end,
}

FriendsMenuXP_Buttons["ADD_GUILD"] = {
    text = FMXP_BUTTON_ADD_GUILD,
    func = function (name) GuildInvite(name); end,
    show = function (name) return name~=UnitName("player") and CanGuildInvite() end,
}

FriendsMenuXP_Buttons["GET_NAME"] = {
    text = FMXP_BUTTON_GET_NAME,
    func = function (name)
        if ( SendMailNameEditBox and SendMailNameEditBox:IsVisible() ) then
            SendMailNameEditBox:SetText(name);
            SendMailNameEditBox:HighlightText();
        elseif( CT_MailNameEditBox and CT_MailNameEditBox:IsVisible() ) then
            CT_MailNameEditBox:SetText(name);
            CT_MailNameEditBox:HighlightText();
        else
            local editBox = ChatEdit_ChooseBoxForSend();
            if editBox:HasFocus() then
                editBox:Insert(name);
            else
                ChatEdit_ActivateChat(editBox);
                editBox:SetText(name);
                editBox:HighlightText();
            end
        end
    end,
}

FriendsMenuXP_Buttons["TRADE"] = {
    text = TRADE,
    isSecure = 1,
    attributes = "type:macro;macrotext:/targetexact $name$",
    func = function (name) InitiateTrade("target"); end,
}

--����
FriendsMenuXP_Buttons["SPELL_MAGE_INTELLECT"] = {
    spellId = 1459,
};

--ħ������
FriendsMenuXP_Buttons["SPELL_MAGE_FOCUS_MAGIC"] = {
    spellId = 54646,
};

--����
FriendsMenuXP_Buttons["SPELL_PRIEST_FORTITUDE"] = {
    spellId = 21562,
};

--������Ӱ
FriendsMenuXP_Buttons["SPELL_PRIEST_SHADOW"] = {
    spellId = 27683,
};

--צ��
FriendsMenuXP_Buttons["SPELL_DRUID_MILD"] = {
    spellId =  1126,
};

FriendsMenuXP_Buttons["SPELL_PAL_MIGHT"] = {
    spellId = 19740,
};

FriendsMenuXP_Buttons["SPELL_PAL_KINGS"] = {
    spellId = 20217,
};

FriendsMenuXP_Buttons["SPELL_WARLOCK_DARK_INTENT"] = {
    spellId = 80398,
};

local function urlencode(obj)
    local currentIndex = 1;
    local charArray = {}
    while currentIndex <= #obj do
        local char = string.byte(obj, currentIndex);
        charArray[currentIndex] = char
        currentIndex = currentIndex + 1
    end
    local converchar = "";
    for _, char in ipairs(charArray) do
        converchar = converchar..string.format("%%%X", char)
    end
    return converchar;
end

FriendsMenuXP_Buttons["ARMORY"] = {
    text = FMXP_BUTTON_ARMORY,
    func = function(name)
        local n,r = name:match"(.*)-(.*)"
        n = n or name
        r = r or GetRealmName()

        -- local portal = GetCVar'portal'
        -- local host = portal == 'cn' and "http://www.battlenet.com.cn/" or ("http://%s.battle.net/"):format(GetCVar'portal')
		
		local host = "https://hi-armory.tw/"

        local armory = host..urlencode(r).."/"..urlencode(n)
        local armoryNoDecode = host..r.."/"..n

        local editBox = ChatEdit_ChooseBoxForSend();
        ChatEdit_ActivateChat(editBox);
        editBox:SetText(armory);
        editBox:HighlightText();
    end,
}

FriendsMenuXP_Buttons["POP_OUT_CHAT"] = {
    text = POP_OUT_CHAT,
    show = function(name, dropdownMenu)
        if ( (dropdownMenu.chatType ~= "WHISPER" and dropdownMenu.chatType ~= "BN_WHISPER") or dropdownMenu.chatTarget == UnitName("player") or
                FCFManager_GetNumDedicatedFrames(dropdownMenu.chatType, dropdownMenu.chatTarget) > 0 ) then
            return false
        end
        return true
    end,
    func = function(name, dropdownFrame)
        FCF_OpenTemporaryWindow(dropdownFrame.chatType, dropdownFrame.chatTarget, dropdownFrame.chatFrame, true);
    end,
}

local _
for k,v in pairs(FriendsMenuXP_Buttons) do
    v.justifyH = "LEFT"
    if v.spellId then
        v.text, _, v.icon = GetSpellInfo(v.spellId);
        if(v.text)then
            v.textHeight = 12
            v.isSecure = 1
            v.attributes = "type:macro;macrotext:/targetexact $name$\n/cast "..v.text:gsub("%:","%^").."\n/targetlasttarget"
            v.show = function() return IsSpellKnown(v.spellId) end
        else
            v.show = function() return false end
        end
    end
end

FriendsMenuXP_ButtonSet = {};
FriendsMenuXP_ButtonSet["NORMAL"] = {
    "WHISPER",
    "POP_OUT_CHAT",
    "INVITE",
    "TARGET",
    "SET_NOTE",
    "REPORT_SPAM",
    "REPORT_BAD_LANGUAGE",
    "IGNORE",
    "CANCEL_IGNORE",
    "PROMOTE",
    "LOOT_PROMOTE",
    --"REPORT_BAD_NAME",
    --"REPORT_CHEATING",
    "GUILD_LEAVE",
    "GUILD_PROMOTE",
    "PVP_REPORT_AFK",
    "REMOVE_FRIEND",
    "ADD_FRIEND",
    "ADD_GUILD",
    "SET_FOCUS",
    "SEND_WHO",
    "GET_NAME",
    "TRADE",
    "ACHIEVEMENTS",
    "ARMORY",
    "CANCEL",
}

FriendsMenuXP_ButtonSet["RAID"] = {
    "WHISPER",
    "TARGET",
    "SEND_WHO",
    "GET_NAME",
    "TRADE",
    "PROMOTE",
    "LOOT_PROMOTE",
    "SET_FOCUS",
    "ACHIEVEMENTS",
    "ARMORY",
    "CANCEL",
}

FriendsMenuXP_ButtonSet["OFFLINE"] = {
    "SET_NOTE",
    "IGNORE",
    "CANCEL_IGNORE",
    "ADD_FRIEND",
    "REMOVE_FRIEND",
    "ARMORY",
    "CANCEL",
}

FriendsMenuXP_ButtonSet["UNITPOPUP"] = {
    "REMOVE_FRIEND",
    "SET_NOTE",
    "ADD_GUILD",
    "GET_NAME",
    "ARMORY",
    "IGNORE",
    "CANCEL_IGNORE",
}

FriendsMenuXP_ButtonSet["NPC"] = {
    "GET_NAME",
}
