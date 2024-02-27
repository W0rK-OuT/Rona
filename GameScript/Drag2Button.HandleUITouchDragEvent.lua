return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: UITouchReceiveComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
local TouchDelta = event.TouchDelta
local TouchId = event.TouchId
local TouchPoint = event.TouchPoint
---------------------------------------------------------
local p = self.Entity.Parent
local pRect = p.UITransformComponent.RectSize

local x = pRect.x / 2
local y = pRect.y / 2

local rect = _DragManager.sizeMain.UITransformComponent.RectSize
local worldPos = p.UITransformComponent.WorldPosition

local calX = rect.x / 2 - x
local calY = rect.y / 2 - y

worldPos.x = worldPos.x + TouchDelta.x
worldPos.y = worldPos.y + TouchDelta.y

local anPos = p.UITransformComponent.anchoredPosition
if anPos.x < -calX then
	anPos.x = -calX
elseif anPos.x > calX then
	anPos.x = calX
end
if anPos.y < -calY then
	anPos.y = -calY
elseif anPos.y > calY then
	anPos.y = calY
end
end