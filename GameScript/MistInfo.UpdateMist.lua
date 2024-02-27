return function (self) 
if _UtilLogic:IsNilorEmptyString(self.mistOption) then
	return
end

local nTable = _HttpService:JSONDecode(self.mistOption)
local id = nTable["id"]
local boxX = nTable["x"]
local boxY = nTable["y"]

local box = self.Entity.TriggerComponent.BoxSize
box.x = boxX
box.y = boxY

if id == 2111003 then
	self.Entity.SpriteGUIRendererComponent.ImageRUID = "9c5ee10444204a7681d00c3b44d931de"
	local scale = self.Entity.SpriteGUIRendererComponent.LocalScale
	scale.x = boxX / 0.4
	scale.y = boxY / 0.3
end
end