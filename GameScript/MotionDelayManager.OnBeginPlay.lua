return function (self) 
local motionTable = _Util:FindTable_All("MotionDataSet")
for key, value in pairs(motionTable) do
	if #value["id"] ~= 0 then
		self.motionDelay[value["id"]] = _Util:ConvertNumber(self.motionDelay[value["id"]]) + _Util:ConvertNumber(value["delay"])
		self.motionPriDelay[value["id"] .. "_" .. value["index"]] = _Util:ConvertNumber(value["delay"])
	end
end

local motionActionTable = _Util:FindTable_All("MotionActionDataSet")
for key, value in pairs(motionActionTable) do
    if #value["id"] ~= 0 then
        if self.motionAction[value["id"]] == nil then
            self.motionAction[value["id"]] = {}
        end
        local nTable = {}
        nTable["action"] = value["action"]
        nTable["delay"] = math.abs(tonumber(value["delay"]))
        nTable["frame"] = tonumber(value["frame"])
		nTable["moveX"] = _SkillStart:ConvertValue(value["moveX"], 0)
		nTable["moveY"] = _SkillStart:ConvertValue(value["moveY"], 0)
		nTable["rotate"] = _SkillStart:ConvertValue(value["rotate"], 0) 
        self.motionAction[value["id"]][tonumber(value["index"]) + 1] = nTable
    end
end

for key, value in pairs(self.motionAction) do
	local totalDelay = 0
	for _, child in pairs(value) do
		totalDelay = totalDelay + child["delay"]
	end
	self.motionActionTotalDelay[key] = totalDelay
end
end