return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if self.check then
	self.check = false
else
	local num = tonumber(text)
	_PetOptionManager:InputEvent(self.Entity.Parent.Name, num)
end
self.Entity.TextInputComponent.Text = ""
end