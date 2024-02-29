return function (self) 
local oriType = self.type
self.type = ""
self.slot = ""
self.subSlot = ""
self.main:SetEnable(false)
self.dragItem:SetEnable(false)
local anPos = self.dragItem.UITransformComponent.anchoredPosition
anPos.x = -500
anPos.y = 500

if oriType == "inv" then
	_InventoryUIManager:SetLastClick("")
elseif oriType == "skill" then
	_SkillUIManager:SetLastClick(nil)
elseif oriType == "key" then
	_PlayerKeyLogic:SetRemoveButton(false)
end
end