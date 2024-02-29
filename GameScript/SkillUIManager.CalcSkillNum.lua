return function (self,skillType) 
skillType = skillType % 1000
if skillType < 100 then
	return 0
end
local first = skillType % 10
local second = math.floor(skillType % 100 / 10)
if second ~= 0 then
	return first + 2
end
return 1
end