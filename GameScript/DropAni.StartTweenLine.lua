return function (self) 
if self.remove then
	return
end

local p = self.parent
if p ~= nil and p.TriggerComponent then
	p.TriggerComponent.Enable = true
end
self.Entity.TweenLineComponent.Enable = true
self.Entity.TweenLineComponent:RestartFromCurrentPosition()
end