return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name

if name == "Arrow1" then
	_StartGame:ClickArrow(true)
elseif name == "Arrow2" then
	_StartGame:ClickArrow(false)
elseif name == "Button" then
	local num = tonumber(_UtilLogic:SubString(Entity.Parent.Name, 5, 1))
	_StartGame:ClickChar(num)
elseif name == "Start" then
	_StartGame:StartChar()
elseif name == "Remove" then
	_StartGame:RemoveChar()
end
end