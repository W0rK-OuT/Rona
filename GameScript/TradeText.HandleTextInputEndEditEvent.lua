return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local text = event.text
---------------------------------------------------------
if self.sub then
	self.sub = false
	self.Entity.TextInputComponent.Text = ""
	if not Environment:IsMobilePlatform() then
		self.Entity.TextInputComponent:ActivateInputField()
	end
end
end