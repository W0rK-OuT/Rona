return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
_MobileKeyManager:ChangeOption(self.Entity.Name, tonumber(Text))
self.submit = true
end