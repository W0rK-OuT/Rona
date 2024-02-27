return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if self.submit then
	self.submit = false
	self.Entity.TextInputComponent.Text = ""
end
end