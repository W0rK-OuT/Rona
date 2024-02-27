return function (self,nTable) 
local str = ""
for key, value in pairs(nTable) do
	str = str .. key .. "@" .. value .. "!"
end
if not _UtilLogic:IsNilorEmptyString(str) then
	str = _UtilLogic:TrimEnd(str, "!")
end
return str
end