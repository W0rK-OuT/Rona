return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
local pName = Entity.Parent.Name
if pName == _PartyManager.inviteBoxName then
	if name == "Yes" then
		_PartyManager:ActionInvtie(nil)
	elseif name == "No" then
		_PartyManager:CloseInviteInfo()
	end
elseif pName == _StorageManager.countBoxName then
	if name == "Yes" then
		_StorageManager:CountAction(nil)
	elseif name == "No" then
		_StorageManager:CloseCountBox()
	end
elseif pName == _StorageManager.mesoBoxName then
	if name == "Yes" then
		_StorageManager:MesoAction(nil)
	elseif name == "No" then
		_StorageManager:CloseMesoBox()
	end
elseif pName == _DragDropManager.countBoxName then
	if name == "Yes" then
		_DragDropManager:Action(nil)
	elseif name == "No" then
		_DragDropManager:CloseCountUI()
	end
end
end