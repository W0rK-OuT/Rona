return function (self) 
local inv = _UserService.LocalPlayer.InventoryComponent
if not inv.IsInitialized then
	return
end

local grid = self.itemGrid
local sample = self.itemSample

local checkTable = {}
local storages = inv:GetItemsWithType(Storage)

---@type Storage
local storage = storages[self.tab]
if storage ~= nil and not _UtilLogic:IsNilorEmptyString(storage.data) then
	-- 변환
	local conTable = _HttpService:JSONDecode(storage.data)
	local converTable = {}
	local itemIndex = 1
	for k, v in pairs(conTable) do
		local nItem = {}
		for itemKey, itemValue in pairs(v) do
			local kkk = _SaveUtil:NumToKey(_SaveUtil:HexToNum(itemKey))
			if kkk ~= nil then
				nItem[kkk] = itemValue
			end
		end	
		converTable[itemIndex] = nItem
		itemIndex += 1
	end
	-------
	
	self.lastShowItems = converTable
	
	for k, v in pairs(converTable) do
		checkTable["" .. k] = true
		local clone = grid:GetChildByName("" .. k)
		if clone == nil then
			clone = sample:Clone("" .. k)
		end
		local itemID = v["id"]
		local quantity = v["quantity"]
		
		local itemData = _ItemData:GetItem(itemID)
		clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, itemData["ruid"])
		if itemID < 2000000 then
			clone:GetChildByName("quantity").TextComponent.Text = ""
		else
			clone:GetChildByName("quantity").TextComponent.Text = "" .. quantity
		end
		clone:SetEnable(true)
	end
	
	self.main:GetChildByName("Weight").TextComponent.Text = "무게 (" .. storage:GetSize() .. " / 1500)"
else
	self.main:GetChildByName("Weight").TextComponent.Text = ""
end
for k, v in pairs(grid.Children) do
	if checkTable[v.Name] == nil then
		v:SetEnable(false)
	end
end
end