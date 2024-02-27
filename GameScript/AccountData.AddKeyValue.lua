return function (self,key,value) 
local nTable
if _UtilLogic:IsNilorEmptyString(self.data) then
	nTable = {}
else
	nTable = _HttpService:JSONDecode(self.data)
end
nTable[key] = _SkillStart:ConvertValue(nTable[key], 0) + value
self.data = _HttpService:JSONEncode(nTable)
return nTable[key]
end