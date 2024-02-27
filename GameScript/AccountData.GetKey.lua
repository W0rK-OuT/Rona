return function (self,key) 
if _UtilLogic:IsNilorEmptyString(self.data) then
	return 0
end
local nTable = _HttpService:JSONDecode(self.data)
return _SkillStart:ConvertValue(nTable[key], 0)
end