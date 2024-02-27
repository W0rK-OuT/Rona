return function (self,tab,slot) 
if not _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
	self:CloseUI()
	return
end

local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(tab)
if inv == nil then
	return
end

local item = inv[slot]
if item == nil then
	return
end

local grid = self.main:GetChildByName("Grid")
local itemEntity = self.main:GetChildByName("Item")
local ci = itemEntity.CreateItemItem
ci.tab = tab
ci.slot = slot

local itemData = _ItemData:GetItem(item["id"])

itemEntity:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(item["id"], itemData["ruid"])
self.main:GetChildByName("Name").TextComponent.Text = itemData["name"]

for k, v in pairs(grid.Children) do
	local itemValue = _SkillStart:ConvertValue(item[v.Name], 0)
	if itemValue ~= 0 then
		v:GetChildByName("Op").TextComponent.Text = "" .. itemValue
	else
		v:GetChildByName("Op").TextComponent.Text = ""
	end
end
end