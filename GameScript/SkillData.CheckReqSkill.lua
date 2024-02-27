return function (self,player,reqSkill) 
if not _UtilLogic:IsNilorEmptyString(reqSkill) then
	local spl = _UtilLogic:Split(reqSkill, ",")
	for key, value in pairs(spl) do
		local spl2 = _UtilLogic:Split(value, "=")
		local reqID = tonumber(spl2[1])
		local reqLevel = tonumber(spl2[2])
		if player.PlayerSkill:GetSkillLevel(reqID) < reqLevel then
			return false
		end
	end
end
return true
end