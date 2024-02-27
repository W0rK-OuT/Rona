return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TriggerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
if TriggerBodyEntity ~= _UserService.LocalPlayer then
	return
end
self.state = 2
self.Entity.SpriteRendererComponent.SpriteRUID = self.endRUID
end