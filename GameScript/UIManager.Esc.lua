return function (self) 
local entity = self:LastEntity()
if entity == nil then
	return
end
local name = entity.Name
if name == _TradeManager.entityName then
	_TradeManager:CloseUI(true)
elseif name == _InventoryUIManager.entityName then
	_InventoryUIManager:CloseUI()
elseif name == _MobileKeyManager.entityName then
	_MobileKeyManager:CloseUI()
elseif name == _NpcTalkLogic.entityName then
	_UserService.LocalPlayer.PlayerNpcTalk:Dispose()
elseif name == _ShopUILogic.entityName then
	_ShopUILogic:CloseUI()
elseif name == _EquipmentLogic.entityName then
	_EquipmentLogic:CloseUI()
elseif name == _QuestTalkManager.entityName then
	_QuestTalkManager:DisposeQuest()
else	
	self.closeUI:AttachChild(entity)
	entity:SetEnable(false)
end
end