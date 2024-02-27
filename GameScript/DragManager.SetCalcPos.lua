return function (self,main,vec) 
local mouse = _InputService:GetCursorPosition()
local anPos = main.UITransformComponent.anchoredPosition
local rect = self.sizeMain.UITransformComponent.RectSize
	
local calX = mouse.x * rect.x / _UILogic.ScreenWidth
local calY = (_UILogic.ScreenHeight - mouse.y) * rect.y / _UILogic.ScreenHeight

local mainRect = main.UITransformComponent.RectSize
	
calX = math.max(calX, 0)
calX = math.min(calX, rect.x - mainRect.x)
	
calY = math.max(calY, 0)
calY = math.min(calY, rect.y - mainRect.y)
	
anPos.x = calX + vec.x
anPos.y = -(calY + vec.y)
end