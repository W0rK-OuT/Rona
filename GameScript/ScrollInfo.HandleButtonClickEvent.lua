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
	_ScrollManager:ScrollAction()
	_ScrollManager:CloseUI()
elseif name == "No" then
	_ScrollManager:CloseUI()
end
end