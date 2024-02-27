return function (self) 
for k, v in pairs(self.coolTime) do
	if k ~= 5121010 then
		self.coolTime[k] = nil
	end
end
_PlayerKeyLogic:CalcCoolTime()
end