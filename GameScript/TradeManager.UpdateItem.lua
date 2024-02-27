return function (self,items) 
if items == nil then
	items = {}
end

local botLeft = self.main:GetChildByName("BotLeft")
local mItems = botLeft:GetChildByName("PlayerItems")
for k, v in pairs(mItems.Children) do
	local item
	if items ~= nil then
		item = items[tostring(k)]
	end
	local ruid
	local count = ""
	if item == nil then
		ruid = "3e9d52ed52d64794bbd6f72bab8ee3d9"
	else
		local itemID = item["id"]
		ruid = _GameUtil:EquipRUID(itemID, _ItemData:GetItem(itemID)["ruid"])
		if itemID >= 2000000 then
			count = item["quantity"]
		end
	end
	v:GetChildByName("Icon").SpriteGUIRendererComponent.ImageRUID = ruid
	v:GetChildByName("Count").TextComponent.Text = count
end
self.items = items
end