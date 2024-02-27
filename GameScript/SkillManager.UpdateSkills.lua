return function (self,job) 
local player = _UserService.LocalPlayer
local playerSkill = player.PlayerSkill
local playerInfo = player.PlayerStats
local sp = _Util:ConvertNumber(playerInfo.sp[self.lastTab])

local skills = _SkillData.skills
local codes = _SkillData.skillCodes

local job1 = math.floor(job / 100) * 100
local job2 = job1 + job % 100 - job % 10

for key, value in pairs(codes) do
	local skillType =  math.floor(value / 10000)
	if skillType == 0 or skillType == job1 or (skillType >= job2 and skillType <= job) then
		local skillStr = tostring(value)
		local spawn = self.grid:GetChildByName(skillStr)
		if spawn == nil then
			spawn = _SpawnService:SpawnByEntity(self.sample, skillStr, Vector3.zero, self.grid)
		end
	end
end

local enableTable = {}

for key, value in pairs(skills) do
	local skillType =  math.floor(key / 10000)
	local skillNum = self:CalcSkillNum(skillType)
	if self.lastTab ~= skillNum then
		continue
	end
	if skillType == 0 or skillType == job1 or (skillType >= job2 and skillType <= job) then
		local skill = _SkillData:GetSkill(key)
		if skill == nil then
			continue
		end
		local sInfo = skill["info"]
		local skillStr = tostring(key)
		local spawn = self.grid:GetChildByName(skillStr)
		if spawn == nil then
			continue
		end
		if _GameUtil:ConvertValue(sInfo["levelView"], 0) == 1 and playerSkill:GetSkillLevel(key) <= 0 and playerSkill:GetMasterLevel(key) <= 0 then
			continue
		end
		-- ruid name desc h masterLevel req
		local oriSkillLevel = playerSkill:GetSkillLevel(key)
		local masterLevel = tonumber(skill["masterLevel"])
		if oriSkillLevel >= masterLevel then
			spawn:GetChildByName("Button").SpriteGUIRendererComponent.Color = Color(204 / 255, 204 / 255, 204 / 255)
			spawn:GetChildByName("Back"):SetVisible(false)
		elseif not _SkillData:CheckReqSkill(player, skill["req"]) then
			spawn:GetChildByName("Button").SpriteGUIRendererComponent.Color = Color(204 / 255, 204 / 255, 204 / 255)
			spawn:GetChildByName("Back"):SetVisible(true)
		elseif _GameUtil:ConvertValue(sInfo["noTeach"], 0) == 1 or sp <= 0 then
			spawn:GetChildByName("Button").SpriteGUIRendererComponent.Color = Color(204 / 255, 204 / 255, 204 / 255)
			spawn:GetChildByName("Back"):SetVisible(false)
		elseif _GameUtil:ConvertValue(skill["baseLevel"], -1) >= 0 and oriSkillLevel >= playerSkill:GetMasterLevel(key) then
			spawn:GetChildByName("Button").SpriteGUIRendererComponent.Color = Color(204 / 255, 204 / 255, 204 / 255)
			spawn:GetChildByName("Back"):SetVisible(false)
		else
			spawn:GetChildByName("Button").SpriteGUIRendererComponent.Color = Color(255 / 255, 153 / 255, 51 / 255)
			spawn:GetChildByName("Back"):SetVisible(false)
		end
		spawn:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = value["ruid"]
		spawn:GetChildByName("Name").TextComponent.Text = value["name"]
		spawn:GetChildByName("Level").TextComponent.Text = "" .. playerSkill:GetSkillLevel(key)
		spawn:SetEnable(true)
		enableTable[key] = 0
	end
end

for key, value in pairs(self.grid.Children) do
	if enableTable[tonumber(value.Name)] == nil then
		value:SetEnable(false)
	end
end

if playerSkill:GetTotalSkillLevel(5001005) > 0 then
	self.dash = 5001005
else
	self.dash = 0
end
end