return function (self,slot,item) 
local inv = self.inv0
inv[slot] = item

_EquipmentLogic:UpdateSlot(slot)
_InventoryUIManager:UpdateEtc(0, slot)
end