return function (self) 
local nTable = {}

for k, v in pairs(_UserService.LocalPlayer.PlayerReBuy.shop) do
	nTable["" .. k] = true
	
	local clone = self.grid:GetChildByName("" .. k)
	if clone == nil then
		clone = self.sample:Clone("" .. k)
	end
	
	local nItem = v[1]
	local meso = v[2]
	
	local itemData = _ItemData:GetItem(nItem["id"])
	clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(nItem["id"], itemData["ruid"])
	clone:GetChildByName("name").TextComponent.Text = itemData["name"] .. " " .. nItem["quantity"] .. "개\n재구매 가격 : " .. meso .. " 메소"
	clone:SetEnable(true)
end

for k, v in pairs(self.grid.Children) do
	if nTable[v.Name] == nil then
		v:SetEnable(false)
	end
end
end