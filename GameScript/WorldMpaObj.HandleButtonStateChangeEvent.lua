return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local state = event.state
---------------------------------------------------------
local num = tonumber(self.Entity.Name)
if num == nil then
	_BaseTextManager:CloseUI()
	return
end
if state == ButtonState.Hover or state == ButtonState.Pressed then
	_BaseTextManager:OpenUI(_MapData:GetMapName(num)["mapName"])
else
	_BaseTextManager:CloseUI()
end
end