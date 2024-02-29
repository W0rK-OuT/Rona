return function (self,slot) 
local player = _UserService.LocalPlayer
local item = player.PlayerInventory.inv0[slot]
local ruid
if item == nil then
	ruid = "3e9d52ed52d64794bbd6f72bab8ee3d9"
else
	local id = item["id"]
	local itemTable = _ItemData:GetItem(id)
	ruid = _GameUtil:EquipRUID(id, itemTable["ruid"])
	if _UtilLogic:IsNilorEmptyString(ruid) then
		ruid = "3e9d52ed52d64794bbd6f72bab8ee3d9"
	end
end
if slot == "31" then
	if item == nil then
		_TamingInfoManager.afterImage = ""
		_TamingInfoManager.attack = 0
		_TamingInfoManager.sfx = ""
	else
		local id = item["id"]
		local info = _ItemData:GetItemInfo(id)
		_TamingInfoManager.attack = _Util:ConvertNumber(info["attack"])
		_TamingInfoManager.afterImage = _Util:ConvertString(info["afterImage"])
		_TamingInfoManager.sfx = _Util:ConvertString(info["sfx"])
	end
end

local entity = self.grid:GetChildByName(slot)
if entity ~= nil then
	entity:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = ruid
end
end