return function (self,str) 
local selTable = {}
if _UtilLogic:IsNilorEmptyString(str) then
	return {"", selTable}
end

local removeStrs = {
	"#b", "#r", "#g", "#e", "#l", "#k"
}

local nStr, _ = str:gsub("#L(.-)\n+", "#L%1")
str = nStr

while _UtilLogic:Contains(str, "#L") do
	local first, _ = string.find(str, "#L")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		local findStr = string.sub(str, first, second)
		local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
		
		str = _UtilLogic:Replace(str, findStr, "")
	else
		local _, last = string.find(str, "#l", second + 1)
		if last == nil then
			local _, last2 = string.find(str, "#L", second + 1)
			if last2 ~= nil then
				last = last2
			else
				last = -1
			end
			
			if last > 0 then
				last = last - 2
			end
		end
		
		local findStr = string.sub(str, first, second)
		local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
		local findStr2 = string.sub(str, second + 1, last)
		
		for _, removeStr in pairs(removeStrs) do
			findStr2 = _UtilLogic:Replace(findStr2, removeStr, "")
		end
		
		local nStr2, _ = findStr2:gsub("#L%d+#(%w+)", "#L%1")
		table.insert(selTable, {findCode + 1, nStr2})
		
		local removeStr = string.sub(str, first, last)
		str = _UtilLogic:Replace(str, removeStr, "")
	end
end

local outputString, _ = str:gsub("#L(.-)\n", "#L%1")
return {outputString, selTable}
end