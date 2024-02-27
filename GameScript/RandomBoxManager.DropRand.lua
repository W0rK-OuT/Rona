return function (self) 
local nTable = _ScrollManager:ScrollRandStat()

local totalRand = 0
for k, v in pairs(nTable) do
	totalRand += v[2]
end
local str = "혼돈의 주문서 확률"
for k, v in pairs(nTable) do
	local value = v[1]
	local rand = v[2]
	str ..= "\n(" .. value .. ") " .. math.floor(rand / totalRand * 10000) / 100 .. "%"
end
_MessageLogic:DropMessage(str)
end