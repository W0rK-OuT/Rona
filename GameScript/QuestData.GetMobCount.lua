return function (self,questID,index) 
local data = self.mobQuest[questID]
if data == nil then
	return 0
end
local one = data[index]
if one == nil then
	return 0
end
return _SkillStart:ConvertValue(one["count"], 0)
end