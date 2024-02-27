return function (self) 
self.boxTab = 0
self.boxSlot = ""
self:TextClear()
self.countBox:SetEnable(false)
_UIManager:Remove(self.countBox)
end