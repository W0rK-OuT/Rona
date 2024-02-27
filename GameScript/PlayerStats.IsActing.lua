return function (self) 
if not self.Entity.PlayerEventStat:IsAlive() then
	return false
end
return self:IsPAlive()
end