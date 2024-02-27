return function (self,key,value) 
if value == nil then
	return 0
end

local nTable
if _UtilLogic:IsNilorEmptyString(self.data) then
	nTable = {}
else
	nTable = _HttpService:JSONDecode(self.data)
end
nTable[key] = value
self.data = _HttpService:JSONEncode(nTable)
return nTable[key]
end