return function (self,cosTable) 
local eyes = self.main:GetChildByName("Eye")
if eyes == nil then
	return
end

for k, v in pairs(eyes.Children) do
	if _SkillStart:ConvertValue(cosTable[v.Name], 0) == 0 then
		v:GetChildByName("X"):SetEnable(false)
	else
		v:GetChildByName("X"):SetEnable(true)
	end
end
end