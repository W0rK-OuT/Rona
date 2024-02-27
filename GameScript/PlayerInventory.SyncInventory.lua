return function (self,tab,inv) 
local inven = self:GetInv(tab)
if inven == nil then
	return
end
if inv == nil then
	table.clear(inven)
else
	table.initialize(inven, inv)
end
if tab == 0 then
	_EquipmentLogic:UpdateAll()
elseif tab == _PlayerInventoryUILogic.tab then
	_PlayerInventoryUILogic:UpdateInventory()
end
_PlayerInventoryUILogic:UpdateEtc(tab, nil)
end