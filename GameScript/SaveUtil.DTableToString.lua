return function (self,nTable) 
local str = ""
for key, value in pairs(nTable) do
	local nStr = ""
	for nKey, nValue in pairs(value) do
		nStr = nStr .. nKey .. "#" .. nValue .. "$"
	end
	if not _UtilLogic:IsNilorEmptyString(nStr) then
		nStr = _UtilLogic:TrimEnd(nStr, "$")
	end
	str = str .. key .. "%" .. nStr .. "^"
end
if not _UtilLogic:IsNilorEmptyString(str) then
	str = _UtilLogic:TrimEnd(str, "^")
end
return str
end