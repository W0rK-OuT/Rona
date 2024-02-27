return function (self) 
self.id = 0
self:UpdateBossRUID(-1)
self.main:SetEnable(false)
_BuffManager:UpdatePos()
end