return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local now = _UtilLogic.ElapsedSeconds
if self.lastClickTime < now then
	self.lastClickTime = now + 0.3
	return
end
self.lastClickTime = 0
self:DoubleClick(Entity.Name)
end