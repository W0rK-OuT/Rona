return function (self,str) 
local nTable = {}
for _, value in pairs(_UtilLogic:Split(str, "!")) do
	local kv = _UtilLogic:Split(value, "@")
	nTable[kv[1]] = kv[2]
end
return nTable
end