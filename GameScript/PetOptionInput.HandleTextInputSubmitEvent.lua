return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
self.check = true
local num = tonumber(Text)
_PetOptionManager:InputEvent(self.Entity.Parent.Name, num)
end