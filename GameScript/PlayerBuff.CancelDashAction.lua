return function (self) 
if self.dashKey > 0 then
	self:CancelBuffToServer(self.dashKey)
end
end