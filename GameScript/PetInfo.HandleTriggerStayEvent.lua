return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TriggerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local TriggerBodyEntity = event.TriggerBodyEntity
---------------------------------------------------------
local drop = TriggerBodyEntity.DropItem
if drop ~= nil and drop:CheckPickup(_UserService.LocalPlayer, true) then
	_DropData:SetPickup(_UserService.LocalPlayer, TriggerBodyEntity, true)
end
end