return function (self,player,skillID,lastTick,skillInfo) 
local playerBuff = player.PlayerBuff
local stat = player.PlayerStats

if not stat:IsActing() then
	return false
end

if playerBuff.darkSight > 0 then
	return false
end
if playerBuff.stun then
	return false
end
if playerBuff.seduce > 0 then
	return false
end
if playerBuff.seal then
	return false
end
if playerBuff.incTaming > 0 then
	return false
end

local linkSkill = _GameUtil:ConvertValue(skillInfo["linkSkill"], 0)
if linkSkill > 0 and player.PlayerSkill:GetTotalSkillLevel(linkSkill) > 0 then
	return false
end

local conCombo = _GameUtil:ConvertValue(skillInfo["conCombo"], 0)
if conCombo > 0 and playerBuff.combo < conCombo then
	return false
end

local dispel = _GameUtil:ConvertValue(skillInfo["dispel"], 0)
if dispel > 0 then
	return false
end

local isMystic = _GameUtil:ConvertValue(skillInfo["incMysticDoor"], 0) > 0
if isMystic then
	return false
end

if not player.PlayerSkill:CheckCoolTime(skillID, lastTick) then
	return false
end

local itemCon = _GameUtil:ConvertValue(skillInfo["itemCon"], 0)
if itemCon > 0 then
	local itemConNo = _GameUtil:ConvertValue(skillInfo["itemConNo"], 1)
	if not player.PlayerInventory:HaveItem(itemCon, itemConNo) then
		return false
	end
end

local incSpiritClaw = _GameUtil:ConvertValue(skillInfo["incSpiritClaw"], 0)
if incSpiritClaw > 0 and not _SkillBuff:CheckSpiritClaw(player) then
	return false
end

local incTaming = _GameUtil:ConvertValue(skillInfo["incTaming"], 0)
if incTaming > 0 then
	return false
end

local weapons = skillInfo["weapon"]
if weapons ~= nil then
    local checkWeapon = false
    local weaponType = math.floor(stat.weaponID / 10000)
    for _, weapon in pairs(weapons) do
        if weapon == weaponType then
            checkWeapon = true
            break
        end
    end
    if not checkWeapon then
        return false
    end
end

return true
end