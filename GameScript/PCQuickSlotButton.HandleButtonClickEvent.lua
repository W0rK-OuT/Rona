return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Yes" then
	_PCKeyManager:ResetButton(_UserService.LocalPlayer)
elseif name == "No" then
	_PCKeyManager:CloseUI()
else
	_PCKeyManager:SetLastClick(Entity.Name)
end
end