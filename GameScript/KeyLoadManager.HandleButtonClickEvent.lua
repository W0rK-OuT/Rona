return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "Exit" then
	_PlayerKeyLogic:LoadCloseUI()
elseif name == "Skill" then
	_PlayerKeyLogic:SwitchLoadTab(0)
elseif name == "Item" then
	_PlayerKeyLogic:SwitchLoadTab(1)
else
	_PlayerKeyLogic:AddList(name)
end
end