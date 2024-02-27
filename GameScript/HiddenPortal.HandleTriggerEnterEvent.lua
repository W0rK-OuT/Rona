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
self.Entity:SetVisible(true)
self.state = 1
self.Entity.SpriteRendererComponent.SpriteRUID = self.startRUID
end