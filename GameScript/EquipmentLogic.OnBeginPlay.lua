return function (self) 
self.pc:SetEnable(false)
self.main = self.pc
self.grid = self.main:GetChildByName("Mid")
self.main:SetEnable(false)
_UIManager:Remove(self.main)
end