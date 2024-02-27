return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: PlayerControllerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local ActionName = event.ActionName
local PlayerEntity = event.PlayerEntity
---------------------------------------------------------
_KeyOperation:ActionKey(ActionName)
end