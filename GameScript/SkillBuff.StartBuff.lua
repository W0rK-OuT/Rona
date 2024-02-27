return function (self,skillID,lastTick) 
local player = _UserService.LocalPlayer
local stat = player.PlayerStats
local isLeft = _PlayerComponent.move:IsFaceLeft()
local stateName = _PlayerComponent.state.CurrentStateName
if stateName == "SIT" then
	return
end
if not stat:IsActing() then
	return
end
local playerBuff = player.PlayerBuff
if playerBuff.darkSight > 0 then
	return
end

if playerBuff.finalAttack > 0 and playerBuff.finalAttack == skillID then
	_CoolTime.attackDelay = -0.24
	playerBuff.finalAttack = 0
	playerBuff:CancelBuffToServer(skillID)
	return
end

local skillLevel = player.PlayerSkill:GetTotalSkillLevel(skillID)
if skillLevel <= 0 then
	_MessageLogic:ShowMessage("스킬 레벨이 존재하지 않습니다.")
	_CoolTime.attackDelay = -0.24
	return
end
local skillInfo = _SkillInfo:SkillInfo(skillID, skillLevel)
if playerBuff.incTaming > 0 then
	if not _TamingManager:isAbleSkill(playerBuff.incTaming, skillID) then
		_MessageLogic:ShowMessage("탈것 탑승 중에는 할 수 없습니다.")
		_CoolTime.attackDelay = -0.24
		return
	end
end

local linkSkill = _SkillStart:ConvertValue(skillInfo["linkSkill"], 0)
if linkSkill > 0 and player.PlayerSkill:GetTotalSkillLevel(linkSkill) > 0 then
	self:StartBuff(linkSkill, lastTick)
	return
end

local conCombo = _SkillStart:ConvertValue(skillInfo["conCombo"], 0)
if conCombo > 0 and playerBuff.combo < conCombo then
	return
end

local mobCount = _SkillStart:ConvertValue(skillInfo["mobCount"], 0)
local noRope = _SkillStart:ConvertValue(skillInfo["noRope"], 0)
if noRope > 0 then
	if stateName == "LADDER" or stateName == "CLIMB" then
		return
	end
end
local noJump = _SkillStart:ConvertValue(skillInfo["noJump"], 0)
if noJump > 0 and not _PlayerWeather.swim then
	if not player.RigidbodyComponent:IsOnGround() then
		return
	end
end
local dispel = _SkillStart:ConvertValue(skillInfo["dispel"], 0)
if dispel == 0 and playerBuff.seal then
	return
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
        _MessageLogic:ShowMessage("장착한 무기로는 사용할 수 없는 스킬입니다.")
		_CoolTime.attackDelay = -0.24
        return
    end
end

if not player.PlayerSkill:CheckCoolTime(skillID, lastTick) then
	_MessageLogic:ShowMessage("아직은 스킬을 사용할 수 없습니다.")
	_CoolTime.attackDelay = -0.12
	return
end
local hpCon = _SkillStart:ConvertValue(skillInfo["hpCon"], 0)
if hpCon > 0 and stat.hp < hpCon + 1 then
	_MessageLogic:ShowMessage("HP가 부족하여 스킬을 사용할 수 없습니다.")
	_CoolTime.attackDelay = -0.12
	return
end
local mpCon = _SkillStart:ConvertValue(skillInfo["mpCon"], 0)
if playerBuff.incManaRate > 0 then
	mpCon = math.ceil(mpCon * (100 - playerBuff.incManaRate) * 0.01)
end
if playerBuff.incInfinity > 0 then
	mpCon = 0
end
if mpCon > 0 and stat.mp < mpCon then
	_MessageLogic:ShowMessage("MP가 부족하여 스킬을 사용할 수 없습니다.")
	_CoolTime.attackDelay = -0.12
	return
end
local isMystic = _SkillStart:ConvertValue(skillInfo["incMysticDoor"], 0) > 0
if isMystic then
	if not _MysticDoorManager:ClientCheck() then
		_CoolTime.attackDelay = -0.12
		return
	end
end
local itemCon = _SkillStart:ConvertValue(skillInfo["itemCon"], 0)
if itemCon > 0 then
	local itemConNo = _SkillStart:ConvertValue(skillInfo["itemConNo"], 1)
	if not player.PlayerInventory:HaveItem(itemCon, itemConNo) then
		local itemName = _SkillStart:ConvertString(_ItemData:GetItem(itemCon)["name"], "")
		_MessageLogic:ShowMessage("스킬을 사용하는 데 필요한 " .. itemName .. "의 개수가 부족합니다.")
		_CoolTime.attackDelay = -0.12
		return
	end
end
local incSpiritClaw = _SkillStart:ConvertValue(skillInfo["incSpiritClaw"], 0)
if incSpiritClaw > 0 and not self:CheckSpiritClaw(player) then
	_MessageLogic:ShowMessage("스킬을 사용하는 데 필요한 표창이 부족합니다.")
	_CoolTime.attackDelay = -0.12
	return
end

playerBuff:CancelDashAction()

local skillEffect = _SkillEffect:GetBuffEffect(skillID, skillLevel)

local motion
local motions = skillInfo["motion"]
if motions ~= nil then
	motion = motions[math.random(1, #motions)]
else
	motion = _SkillData:GetSkillMotion(skillID)
end
if motion ~= nil then
	if playerBuff.incTaming > 0 then
		if motion == "octopus" then
			motion = "alert2"
		end
	elseif stateName == "LADDER" then
		if motion == "alert3" then
			motion = "ladder2"
		else
			motion = "ladder"
		end
	elseif stateName == "CLIMB" then
		if motion == "alert3" then
			motion = "rope2"
		else
			motion = "rope"
		end
	end
	_SkillBegin:SpecialAction(skillID, motion, 6, false, lastTick)
else
	_CoolTime.attackDelay = -0.24 -- 모션이 없으면 딜레이
end

local incTaming = _SkillStart:ConvertValue(skillInfo["incTaming"], 0)
if incTaming > 0 then
	_CoolTime.attackDelay = -0.6
	if playerBuff.incTaming > 0 then
		if playerBuff.incTaming == incTaming then
			playerBuff:CancelTaming()
		end
		return
	end
end

local useSound = skillEffect["useSound"]
if not _UtilLogic:IsNilorEmptyString(useSound) then
	_SoundService:PlaySound(useSound, 1)
end

local buffPlayers = {}
local partyBuff = skillInfo["partyBuff"]
if partyBuff ~= nil then
	---@type CollisionSimulator
	local simul = _SkillBegin.simulator
	local buffPos = _PlayerComponent.trans.Position:ToVector2()
	
	---@type Vector2
	local partyBuffPos = skillInfo["partyBuffPos"]
	if partyBuffPos ~= nil then
		buffPos.x += partyBuffPos.x
		buffPos.y += partyBuffPos.y
	end
	local box = simul:OverlapBoxAll("player", buffPos, partyBuff, 0)
	for k, v in pairs(box) do
		table.insert(buffPlayers, v.Entity)
	end
	_SkillBegin:RangeUI(buffPos, partyBuff, nil)
end

local buffMonsters = {}
if mobCount > 0 then
	---@type CollisionSimulator
	local simul = _SkillBegin.simulator
	local buffPos = _PlayerComponent.trans.Position:ToVector2() + skillInfo["skillPos"]
	local buffRange = skillInfo["skillRange"]
	
	local box = simul:OverlapBoxAll("monster", buffPos, buffRange, 0)
	for k, v in pairs(box) do
		if v.Entity.MobInfo:IsAlive() then
			table.insert(buffMonsters, v.Entity)
		end
	end
	_SkillBegin:RangeUI(buffPos, buffRange, nil)
end

if _SkillMove.lastNum >= 30 then
	_MessageLogic:ShowMessage("클릭이 감지되지 않아서 버프가 취소되었습니다.")
	return
end
_SkillMove.lastNum += 1

self:BuffServer(player, skillID, isLeft, stateName, lastTick, buffPlayers, buffMonsters)
end