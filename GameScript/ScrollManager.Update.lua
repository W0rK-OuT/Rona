return function (self) 
local player = _UserService.LocalPlayer
local playerInventory = player.PlayerInventory
local equipRUID = "3e9d52ed52d64794bbd6f72bab8ee3d9"
local equipName = ""
local scrollRUID = "3e9d52ed52d64794bbd6f72bab8ee3d9"
local scrollName = ""
if not _UtilLogic:IsNilorEmptyString(self.equipSlot) then
	local item = playerInventory.inv0[self.equipSlot]
	if item ~= nil then
		local itemData = _ItemData:GetItem(item["id"])
		equipRUID = _GameUtil:EquipRUID(item["id"], itemData["ruid"])
		equipName = "아이템 : " .. itemData["name"]
	end
end
if not _UtilLogic:IsNilorEmptyString(self.scrollSlot) then
	local item = playerInventory.inv2[self.scrollSlot]
	if item ~= nil then
		local itemData = _ItemData:GetItem(item["id"])
		scrollRUID = _GameUtil:EquipRUID(item["id"], itemData["ruid"])
		scrollName = "주문서 : " .. itemData["name"]
	end
end
self.main:GetChildByName("Equip"):GetChildByName("Icon").SpriteGUIRendererComponent.ImageRUID = equipRUID
self.main:GetChildByName("Scroll"):GetChildByName("Icon").SpriteGUIRendererComponent.ImageRUID = scrollRUID
self.main:GetChildByName("EquipName").TextComponent.Text = equipName
self.main:GetChildByName("ScrollName").TextComponent.Text = scrollName
end