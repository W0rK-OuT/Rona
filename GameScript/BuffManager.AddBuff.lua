return function (self,skillID,buff) 
local ruid
if skillID > 0 then
	local skillData = _SkillData:GetSkill(skillID)
	ruid = skillData["ruid"]
else
	local itemData = _ItemData:GetItem(-skillID)
	ruid = itemData["ruid"]
end

local strNum = tostring(skillID) 
local clone = self.main:GetChildByName(strNum)
if clone == nil then
	clone = self.sample:Clone(strNum)
end
clone:GetChildByName("RUID").SpriteGUIRendererComponent.ImageRUID = ruid
--clone.SpriteGUIRendererComponent.ImageRUID = ruid
local localTime = _SkillStart:ConvertValue(buff["time"], 0)
if localTime == -1 then
	clone.BuffButton.Enable = false
	clone.BuffButton.text.Text = ""
	
	clone:GetChildByName("Cool"):SetEnable(false)
else
	clone.BuffButton.buffTime = localTime
	clone.BuffButton.startTime = localTime
end

self:UpdatePos()
end