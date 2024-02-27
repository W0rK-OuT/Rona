return function (self,slot) 
self.rechargeSlot = slot
self.rechargeClone:SetEnable(true)
_UIManager:Add(self.rechargeClone)
end