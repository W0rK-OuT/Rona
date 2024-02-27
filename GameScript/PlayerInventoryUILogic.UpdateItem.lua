return function (self,tab,slot,itemOption) 
local grid = self.main:GetChildByName("Grid")
local item = grid:GetChildByName(slot)
if item == nil then
    return
end

local itemID
local ruid
local quantity
if itemOption == nil then
	ruid = "3e9d52ed52d64794bbd6f72bab8ee3d9" -- 투명 이미지
	quantity = ""
	itemID = 0
	item:GetChildByName("Num"):SetEnable(true)
else
	itemID = itemOption["id"]
	if itemID < 2000000 then
		quantity = ""
	else
		quantity = tostring(itemOption["quantity"])
	end
	local itemTable = _ItemData:GetItem(itemID)
	ruid = _GameUtil:EquipRUID(itemID, itemTable["ruid"])
	if _UtilLogic:IsNilorEmptyString(ruid) then
		ruid = "2d183f2a7f3048546921a16002d411da" -- X 이미지
	end
	item:GetChildByName("Num"):SetEnable(false)
end

local entity = item:GetChildByName("ruid")
if itemID > 0 then
	_ItemData:SetNativeSize(entity, itemID)
end
entity.SpriteGUIRendererComponent.ImageRUID = ruid
item:GetChildByName("quantity").TextComponent.Text = quantity
end