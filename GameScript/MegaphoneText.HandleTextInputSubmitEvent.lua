return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
self.sub = true
_MegaphoneManager:ShootEvent2(Text)
end