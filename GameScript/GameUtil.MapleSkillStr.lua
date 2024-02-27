return function (self,str,skillInfo) 
while _UtilLogic:Contains(str, "#c") do
	local first, _ = string.find(str, "#c")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = string.sub(findStr, 3, #findStr - 1)
	str = _UtilLogic:Replace(str, findStr, "<color=orange>" .. findCode .. "</color>")
end
while _UtilLogic:Contains(str, "{") do
	local first, _ = string.find(str, "{")
	local _, second = string.find(str, "}", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = string.sub(findStr, 2, #findStr - 1)
	str = _UtilLogic:Replace(str, findStr, _GameUtil:ConvertString(skillInfo[findCode], "?"))
end
return str
end