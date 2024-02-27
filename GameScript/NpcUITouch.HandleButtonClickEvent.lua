return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local npcEntity = Entity.Parent
_NpcTalkLogic:TouchNpc(npcEntity)
end