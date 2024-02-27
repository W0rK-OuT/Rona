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
	if Entity.Parent.Name == "Char1" then
		_StartGame:ClickChar(1)
	elseif Entity.Parent.Name == "Char2" then
		_StartGame:ClickChar(2)
	elseif Entity.Parent.Name == "Char3" then
		_StartGame:ClickChar(3)
	end
elseif name == "Start" then
	_StartGame:StartChar()
elseif name == "Remove" then
	_StartGame:RemoveChar()
end
end