return function (self) 
local cards = self.cards[self.tab]
if cards == nil then
	return	
end

local player = _UserService.LocalPlayer
local nTable = {}

for k, v in pairs(cards) do
	local clone = self.grid:GetChildByName("" .. k)
	if clone == nil then
		clone = self.sample:Clone("" .. k)
	end
	local count = _GameUtil:ConvertValue(player.PlayerStats.card["" .. v], 0)
	local itemData = _ItemData:GetItem(v + 2380000)
	
	clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = itemData["ruid"]
	clone:GetChildByName("count").TextComponent.Text = "" .. count
	
	local star = self:CalcStar(count)
	for idx = 1, 5 do
		if idx <= star then
			clone:GetChildByName("Star" .. idx).SpriteGUIRendererComponent.Color = Color(1, 1, 1)
		else
			clone:GetChildByName("Star" .. idx).SpriteGUIRendererComponent.Color = Color(83 / 255, 83 / 255, 83 / 255)
		end
	end
	clone:SetEnable(true)
	nTable["" .. k] = true
end

for k, v in pairs(self.grid.Children) do
	if nTable[v.Name] == nil then
		v:SetEnable(false)
	end
end
end