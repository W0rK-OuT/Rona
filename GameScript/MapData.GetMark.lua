return function (self,markName) 
if _UtilLogic:IsNilorEmptyString(markName) or markName == "None" then
	return nil
end
local findMark = _Util:FindTable_Value("MapMarkData", "id", markName)
if findMark == nil then
	return nil
end
return findMark["ruid"]
end