return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: UITouchReceiveComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
local TouchId = event.TouchId
local TouchPoint = event.TouchPoint
---------------------------------------------------------
if not Environment:IsMobilePlatform() then
	return
end
for idx = 1, 10 do
	if self.check then
		break
	end
	wait(0.01)
end
self:CloseUI()
self.check = false
end