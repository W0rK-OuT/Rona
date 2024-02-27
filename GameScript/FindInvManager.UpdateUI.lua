return function (self) 
local grid = self.main:GetChildByName("Grid")
for _, v in pairs(grid.Children) do
	v:SetEnable(false)
end

local inv = self.inv[self.lastPlayerSlot]
if inv == nil then
	return
end

local pInv = inv[self.lastTab]
if pInv == nil then
	return
end

local sample = grid:GetChildByName("Sample")

for k, v in pairs(pInv) do
	local clone = grid:GetChildByName("" .. k)
	if clone ~= nil then
		local itemID = v["id"]
		local quantity = v["quantity"]
		clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, _ItemData:GetItem(itemID)["ruid"])
		if itemID < 2000000 then
			clone:GetChildByName("count").TextComponent.Text = ""
		else
			clone:GetChildByName("count").TextComponent.Text = quantity
		end		
		clone:SetEnable(true)
	end
end
end