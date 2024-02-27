return function (self,npc) 
local info = npc.NpcInfo

self.dispose = true
self.nextDispose = false
self.npcEntity = npc
self.id = info.id
self.name = info.name
self.status = -1
self.ruid = npc.SpriteRendererComponent.SpriteRUID

return self:QuestTalkMore(1, -1)
end