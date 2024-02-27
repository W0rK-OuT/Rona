return function (self,randTable,valueIndex) 
local totalRand = 0
local randStatTable = randTable
for key, value in pairs(randStatTable) do
	totalRand = totalRand + value[valueIndex]
end

local randIndex = 0
local randKeyOne = math.random(0, totalRand - 1) + 1
for key, value in pairs(randStatTable) do
	randKeyOne = randKeyOne - value[valueIndex]
	if randKeyOne <= 0 then
		randIndex = key
		break
	end
end
		
return randStatTable[randIndex]
end