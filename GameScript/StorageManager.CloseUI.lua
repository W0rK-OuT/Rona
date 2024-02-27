return function (self) 
self.lastSlot = 0
self.lastClick = 0
self.invLastSlot = ""
self.invLastClick = 0

self:CloseMesoBox()
self:CloseCountBox()
self.lastShowItems = {}
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end