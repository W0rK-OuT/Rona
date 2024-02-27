return function (self,skillID,lastTick) 
if skillID == 5220002 then
	skillID = 5211001
end

if self:IsClient() then
	local cool = self.coolTime[skillID]
	if cool == nil then
		return true
	end
	return cool[2] <= lastTick
else
	local nextTime = self.coolTime[skillID]
	if nextTime == nil then
		return true
	end
	return nextTime <= lastTick
end
end