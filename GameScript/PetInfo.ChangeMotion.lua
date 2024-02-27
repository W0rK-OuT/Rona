return function (self,motion) 
if self.motion == motion then
	return
end
self:ForceChangeMotion(motion)
end