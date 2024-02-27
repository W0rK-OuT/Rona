return function (self,slots) 
for tab, slot in pairs(slots) do
	self:UpdateMaxSlot(tab, slot, false)
end
self:CalcInvSize()
--self:UpdateInventory()
end