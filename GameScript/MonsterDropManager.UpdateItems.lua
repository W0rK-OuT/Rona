return function (self,items,mobInfo) 
local grid = self.itemSample.Parent
for k, v in pairs(grid.Children) do
	v:SetEnable(false)
end
if items ~= nil then
	for k, v in pairs(items) do
		local clone = grid:GetChildByName("" .. k)
		if clone == nil then
			clone = self.itemSample:Clone("" .. k)
		end
		if v == 0 then
			clone:GetChildByName("Back"):GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = "122671c1ea804d80b3f637297c5f5dde"
			clone:GetChildByName("Name").TextComponent.Text = "메소"
		else
			local itemData = _ItemData:GetItem(v)
			clone:GetChildByName("Back"):GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(v, itemData["ruid"])
			clone:GetChildByName("Name").TextComponent.Text = itemData["name"]
		end
		clone:GetChildByName("code").TextComponent.Text = "" .. v
		clone:SetEnable(true)
	end
end
if mobInfo == nil then
	self.mobText.Text = ""
else
	local mobName = mobInfo["name"]
	if mobName == nil then
		self.mobText.Text = ""
	else
        local text = mobName .. " (Lv. " .. mobInfo["level"]  .. ")"
        text ..= "\nHP " .. _Util:ConvertComma(mobInfo["maxHP"]) .. " / MP " .. _Util:ConvertComma(mobInfo["maxMP"])
		text ..= "\nEXP " .. _Util:ConvertComma(mobInfo["exp"])
		self.mobText.Text = text
	end
end
end