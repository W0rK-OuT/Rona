return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: PlayerControllerComponent
-- Space: Server, Client
---------------------------------------------------------

-- Parameters
local LookAtX = event.LookAtX
---------------------------------------------------------
self:ChangeLook(LookAtX < 0)
end