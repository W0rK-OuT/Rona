return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TouchReceiveComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local TouchId = event.TouchId
local TouchPoint = event.TouchPoint
---------------------------------------------------------
if _InputService:IsPointerOverUI() then
	return
end
_NpcTalkLogic:TouchNpc(self.Entity)
end