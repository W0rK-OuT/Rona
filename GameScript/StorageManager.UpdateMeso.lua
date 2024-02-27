return function (self) 
local inv = _UserService.LocalPlayer.InventoryComponent
if not inv.IsInitialized then
	return
end
local storages = inv:GetItemsWithType(Storage)

local meso = 0
---@type Storage
local storage = storages[1]
if storage ~= nil then
	meso = _SkillStart:ConvertValue(storage.meso, 0)
end

self.main:GetChildByName("Meso"):GetChildByName("Meso").TextComponent.Text = _Util:ConvertComma(meso)
end