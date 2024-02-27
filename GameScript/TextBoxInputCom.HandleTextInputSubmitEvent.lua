return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: TextInputComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Text = event.Text
---------------------------------------------------------
self.check = true
local pName = self.Entity.Parent.Name
if pName == _PartyManager.inviteBoxName then
	_PartyManager:ActionInvtie(Text)
elseif pName == _StorageManager.countBoxName then
	_StorageManager:CountAction(tonumber(Text))
elseif pName == _StorageManager.mesoBoxName then
	_StorageManager:MesoAction(tonumber(Text))
elseif pName == _DragDropManager.countBoxName then
	_DragDropManager:Action(tonumber(Text))
end
end