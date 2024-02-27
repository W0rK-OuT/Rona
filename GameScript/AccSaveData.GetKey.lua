return function (self,key) 
if _UtilLogic:IsNilorEmptyString(self.data) then
	return ""
end
local nTable = _HttpService:JSONDecode(self.data)
return _GameUtil:ConvertString(nTable[key], "")
end