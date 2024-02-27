return function (self) 
self.normalAttack = {
	[1] = {"stabO1", "stabO2", "swingO1", "swingO2", "swingO3"}, -- 검
	[2] = {"stabT1", "stabT2", "swingP1", "swingP2", "swingT2"}, -- 창 폴암
	[3] = {"swingT1", "swingT3"}, -- 보우
	[4] = {"stabT1", "swingT1"}, -- 석궁
	[5] = {"stabO1", "stabO2", "swingT1", "swingT2", "swingT3"}, -- 양손 검 등등
	[6] = {"swingO2"}, -- 스태프, 완드
	[7] = {"stabO1", "stabO2"}, -- 아대
	[8] = {"stabO1", "stabO2"}, -- 너클
	[9] = {"swingT1", "swingT2", "swingT3"}, -- 건
	--[10] = {}, -- 듀블 보조무기
}
self.finalAttack = {
	[1] = {"stabOF", "swingOF"}, -- 검
	[2] = {"stabTF", "swingPF"}, -- 창 폴암
	[3] = {"shootF"}, -- 보우
	[4] = {"shoot2"}, -- 석궁
	[5] = {"stabOF", "swingTF"}, -- 양손 검 등등
}

if self:IsServer() then
	local nTable = _Util:FindTable_All("AfterDelay")
	for key, value in pairs(nTable) do
		local id = tonumber(value["id"])
		if id ~= nil then
			self.afterDelay[id] = tonumber(value["delay"])
		end
	end
end

if not _LoadingSetting.skillLoad then
	return
end
local codeIndex = 1
for idx = 0, 5 do
	local skillTable = _Util:FindTable_All("SkillData" .. idx)
	for key, value in pairs(skillTable) do
		local id = tonumber(value["id"])
		if id ~= nil then
			local sInfo = value["info"]
			if not _UtilLogic:IsNilorEmptyString(sInfo) then
				local spl = _UtilLogic:Split(sInfo, ",")
				local nInfo = {}
				for k, v in pairs(spl) do
					local spl2 = _UtilLogic:Split(v, "=")
					nInfo[spl2[1]] = spl2[2]
				end
				value["info"] = nInfo
			else
				value["info"] = {}
			end
			self.skills[id] = value
			self.skillCodes[codeIndex] = id
			codeIndex += 1
			--table.insert(self.skills, value)
		end
	end
end

local normal = _Util:FindTable_All("NortalAttack")
for key, value in pairs(normal) do
	local name = value["weapon"]
	local motion = value["motion"]
    --if _UtilLogic:Contains(motion, "F") then
    --    goto continue
    --end
	local boxX = tonumber(value["boxX"]) / 100
	local boxY = tonumber(value["boxY"]) / 100
	local posX = tonumber(value["posX"]) / 100
	local posY = tonumber(value["posY"]) / 100
	self.normalRange[name .. "_" .. motion] = NormalRange(Vector2(boxX, boxY), Vector2(posX, posY))
    --if self.normalAttack[name] == nil then
    --    self.normalAttack[name] = {}
    --end
    --if motion ~= "proneStab" then
    --    table.insert(self.normalAttack[name], motion)
    --end
    --::continue::
end
local skillAction = _Util:FindTable_All("SkillAction")
for key, value in pairs(skillAction) do
	local id = tonumber(value["id"])
	if id ~= nil then
		self.skillAction[id] = value["motion"]
	end
end

self.init = true
end