return function (self,event) 
if _InputService:IsPointerOverUI() then
	return
end
local npcEntity = self.Entity.Parent
_NpcTalkLogic:TouchNpc(npcEntity)
end