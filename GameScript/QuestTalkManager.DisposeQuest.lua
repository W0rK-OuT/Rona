return function (self) 
self.dispose = false
self.nextDispose = false
self.npcEntity = nil
self.questData = nil
self.questID = 0

self.main:SetEnable(false)
_UIManager:Remove(self.main)

self:TextRemove()
end