return function (self,str) 
local nTable = {}
for _, value in pairs(_UtilLogic:Split(str, "^")) do
	local kv = _UtilLogic:Split(value, "%")
	local nnTable = {}
	for _, nValue in pairs(_UtilLogic:Split(kv[2], "$")) do
		local nkv = _UtilLogic:Split(nValue, "#")
		nnTable[nkv[1]] = nkv[2]
	end
	nTable[kv[1]] = nnTable
end
return nTable
end