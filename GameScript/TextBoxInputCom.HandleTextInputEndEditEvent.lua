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
	local pName = self.Entity.Parent.Name
	if pName == _StorageManager.countBoxName then
		_StorageManager:TextClear()
	end
end
end