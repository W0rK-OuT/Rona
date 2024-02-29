return function (self,ActionName) 
_UIManager:OnOffCloseManager()

if _PCKeyManager.openBox.Enable then
	return
end

if ActionName == "EnterPortal" then
	_UserService.LocalPlayer.PlayerTrigger:EnterPortal()
elseif ActionName == "C-Inven" then
    _InventoryUIManager:CheckUI()
elseif ActionName == "C-KeySetting" then
    _PlayerKeyLogic:CheckUI()
elseif ActionName == "C-Quest" then
	_QuestUIManager:CheckUI()
elseif ActionName == "C-Equip" then
    _EquipmentLogic:CheckUI()
elseif ActionName == "C-Stat" then
    _StatUILogic:CheckUI()
elseif ActionName == "C-Skill" then
    _SkillUIManager:CheckUI()
elseif ActionName == "C-Book" then
	_MonsterCardLogic:CheckUI()
elseif ActionName == "C-ESC" then
    _UIManager:Esc()
elseif ActionName == "C-Tab" then
    _TabKeyManager:TabkeyLogic()
elseif ActionName == "C-Party" then
    _PartyManager:CheckUI()
elseif ActionName == "C-Drop" then
    _MonsterDropManager:CheckUI()
elseif ActionName == "C-Mobile" then
    _MobileKeyManager:CheckUI()
elseif ActionName == "C-WorldMap" then
    _WorldMapManager:CheckUI()
elseif ActionName == "C-MiniMap" then
    _MiniMapManager:CheckUI()
elseif ActionName == "C-QuickSlot" then
    _PlayerKeyLogic:QuickSlotOnOff()
elseif ActionName == "C-Enter" or ActionName == "C-Enter2" then
    _UIManager:Enter()
elseif ActionName == "C-Chat" then
	_ChatManager:EnterManager()
elseif ActionName == "C-ChatP" then
	_ChatManager:ChatP()
elseif ActionName == "C-Chat0" then
	_ChatManager:ChangeChatType(0)
elseif ActionName == "C-Chat1" then
	_ChatManager:ChangeChatType(1)
elseif ActionName == "C-Chat2" then
	_ChatManager:ChangeChatType(2)
end
end