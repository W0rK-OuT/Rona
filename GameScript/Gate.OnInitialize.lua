return function (self) 
if self.gate == 1 then
	self.repete = 2
	self.Entity:SetVisible(false)
elseif self.gate == 2 then
	-- 없음
elseif self.gate == 3 then
	self.repete = 2
	self.Entity:SetVisible(false)
end
end