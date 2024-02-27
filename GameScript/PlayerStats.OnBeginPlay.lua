return function (self) 
if Environment:IsMakerPlay() then
	self:OnMapEnter(self.Entity.CurrentMap)
end
end