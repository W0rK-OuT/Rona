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
if Environment:IsMobilePlatform() then
	return
end
self:OpenUI()
self.check = true
end