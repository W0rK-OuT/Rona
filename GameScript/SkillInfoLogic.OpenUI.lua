return function (self,skillID) 
if skillID == nil then
	return
end
local skillData = _SkillData:GetSkill(skillID)
if skillData == nil then
	return
end
local player = _UserService.LocalPlayer
local skillLevel = player.PlayerSkill:GetSkillLevel(skillID)
local info = _SkillInfo:SkillInfo(skillID, skillLevel)
local nextInfo = _SkillInfo:SkillInfo(skillID, skillLevel + 1)

local iconRUID = skillData["ruid"]
local skillName = skillData["name"]
local skillDesc = _GameUtil:MapleSkillStr(_UtilLogic:Trim(skillData["desc"], "\n"), info)
local skillH = skillData["h"]
local skillMasterLevel = _GameUtil:ConvertValue(skillData["masterLevel"], 0)
local baseLevel = _GameUtil:ConvertValue(skillData["baseLevel"], -1)
--local sInfo = skillData["info"]

self.main:GetChildByName("Name").TextComponent.Text = skillName
self.main:GetChildByName("Icon"):GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = iconRUID

local desc = self.main:GetChildByName("Desc")
local descSizeX = desc.UITransformComponent.RectSize.x
local descText = desc.TextComponent

if baseLevel >= 0 then
	skillDesc = "[마스터 레벨 : " ..  player.PlayerSkill:GetMasterLevel(skillID) .. "/" .. skillMasterLevel .. "]\n" .. skillDesc
else
	skillDesc = "[마스터 레벨 : " .. skillMasterLevel .. "]\n" .. skillDesc
end

descText.Text = skillDesc
local descSizeY = math.max(120, math.ceil(descText:GetPreferredHeight(skillDesc, descSizeX)))
--log(skillDesc, descSizeX, descText:GetPreferredHeight(skillDesc, descSizeX))

self.main:GetChildByName("Line").UITransformComponent.anchoredPosition.y = -(65 + descSizeY)

local levelDesc = self.main:GetChildByName("LevelDesc")
local levelDescTrans = levelDesc.UITransformComponent
local levelDescText = levelDesc.TextComponent
levelDescTrans.anchoredPosition.y = -(70 + descSizeY)

local str = ""
if skillLevel > 0 then
	local nStr = "[현재레벨 " .. skillLevel .. "]\n" .. skillH .. "\n"
	str ..= _GameUtil:MapleSkillStr(nStr, info)
end
if skillLevel < skillMasterLevel then
	local nStr = "[다음레벨 " .. (skillLevel + 1) .. "]\n" .. skillH .. "\n"
	str ..= _GameUtil:MapleSkillStr(nStr, nextInfo)
end
str = _UtilLogic:Trim(str, "\n")

levelDescText.Text = str
local resultY = math.ceil(levelDescText:GetPreferredHeight(str, levelDescTrans.RectSize.x))

self.main.UITransformComponent.RectSize.y = resultY + descSizeY + 90

self.main:SetEnable(true)
_UIManager:Add(self.main)

_DragManager:SetCalcPos(self.main, Vector2(0, 0))

_ItemInfoLogic:CloseUI()
--_SkillInfoLogic:CloseUI()
_BaseTextManager:CloseUI()

--if Environment:IsMakerPlay() then
--    log(skillID .. " / " .. skillLevel .. " / " .. player.PlayerSkill:GetMasterLevel(skillID))
--end
end