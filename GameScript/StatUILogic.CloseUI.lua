return function (self) 
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
self.clone:SetEnable(false)
self:CloseAtuoStat()
self:CloseMobileStat()
self.autoType = 0
_UIManager:Remove(self.clone)
end