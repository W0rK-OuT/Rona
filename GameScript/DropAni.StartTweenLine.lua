return function (self) 
if self.remove then
	return
end

local p = self.parent
if self.Entity.TriggerComponent then
	self.Entity.TriggerComponent.Enable = true
end
if isvalid(p) and p.TriggerComponent then
    p.TriggerComponent.Enable = true
end
self.Entity.TweenLineComponent.Enable = true
self.Entity.TweenLineComponent:RestartFromCurrentPosition()
end