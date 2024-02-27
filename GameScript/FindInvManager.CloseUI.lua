return function (self) 
self:ChangeTab(-1)
self:ChangeSlot("")
self:UpdateUI()
table.clear(self.inv)
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end