return function (self,skillID,lastTick,finalAttack,charge) 
--if self._T.time == nil then
--    self._T.time = 0
--end
--local now = lastTick
--local oriTime = self._T.time
--self._T.time = now
--log(now - oriTime)
local player = _UserService.LocalPlayer
local playerBuff = player.PlayerBuff
if skillID > 0 and playerBuff.seal then
	return 1
end

_CoolTime.idleTime = 0

local playerSkill = player.PlayerSkill
local stats = player.PlayerStats
local isLeft = _PlayerComponent.move:IsFaceLeft()
local weaponID = stats.weaponID
local skillLevel = 1

if not stats:IsActing() then
	return 1
end

playerBuff:CancelDashAction()

local isSoulArrow = playerBuff.soulArrow 

local jobType = _GameUtil:JobType(stats.job)
if jobType ~= 5 and weaponID == 0 then
	return 1
end

local stateName = _PlayerComponent.state.CurrentStateName
if stateName == "LADDER" or stateName == "CLIMB" or stateName == "SIT" then
	return 1
end
if playerBuff.incTaming > 0 then
	if not _TamingManager:isAbleSkill(playerBuff.incTaming, skillID) then
		if skillID > 0 then
			_MessageLogic:ShowMessage("탈것 탑승 중에는 할 수 없습니다.")
		end
		_CoolTime.attackDelay = -0.12
		return 1
	end
end

local isProneStab = stateName == "CROUCH"
local isRangeAttack = false
local isHeal = false
local isLastMobCalc = true

---@type CollisionSimulator
local simul = self.simulator
local playerBasePos = _PlayerComponent.trans.Position:ToVector2()
local playerPos = playerBasePos + Vector2(isLeft and -0.2 or 0.2, 0.27)

local healPlayers = {}
local firstMobTable = {}
local mobTable = {}
---@type table
local box
local throwSlot
local noHitCancel = false

local skillInfo = {}
local monsterAttackCount = 1
local attackCount = 1
local fixZero = false 
local calcAttackSpeed = stats.weaponSpeed + playerBuff.attackSpeed + playerBuff.incInfusion
local motion
local sMotion = true
local masteryEff = true
local roar = 0
local isRapid = false
local cancelRapid = false
local isReactorAttack = false
local isHomingSkill = false
local weaponName = stats.weaponName

::back::

if isProneStab then
	_PlayerComponent.controller:ActionAttack()
	skillID = 0
	motion = "proneStab"
	sMotion = false
	_CoolTime.attackDelay = -_SkillHelper:ProneStab(motion, calcAttackSpeed) / 1000
	
	local posAndBox = _SkillData:GetNormalRange(weaponName .. "_" .. motion)
	local calPos = playerBasePos + Vector2(isLeft and -posAndBox.pos.x or posAndBox.pos.x, posAndBox.pos.y)
	
	local reactorBox = simul:OverlapBoxAll("reactor", calPos, posAndBox.box, 0)
	if _ReactorAttack:ReactorAttack(reactorBox) then
		return 1
	end
	
	box = simul:OverlapBoxAll("monster", calPos, posAndBox.box, 0)
	self:RangeUI(calPos, posAndBox.box, nil)
	
	--_SkillData:GetNormalSound(self.sfx)
	--self:NormalAction(motion, self.attackSpeed - 2)
elseif weaponID == 0 and skillID == 0 then
	motion = _SkillData:GetNormalRandMotion(8)
	local posAndBox = _SkillData:GetNormalRange("knuckle_" .. motion)
	
	local calPos = playerBasePos + Vector2(isLeft and -posAndBox.pos.x or posAndBox.pos.x, posAndBox.pos.y)
	box = simul:OverlapBoxAll("monster", calPos, posAndBox.box, 0)
	self:RangeUI(calPos, posAndBox.box, nil)

	_SkillData:GetNormalSound("knuckle")
	--self:NormalAction(motion, calcAttackSpeed)
elseif skillID == 0 then
	if playerBuff.incTaming > 0 then
		return 1
	end
	--local isNormalMotion = true
	if not fixZero then
		motion = _SkillData:GetNormalRandMotion(self.attack)
		local posAndBox = _SkillData:GetNormalRange(weaponName .. "_" .. motion)
		local calPos = playerBasePos + Vector2(isLeft and -posAndBox.pos.x or posAndBox.pos.x, posAndBox.pos.y)
		
		local reactorBox = simul:OverlapBoxAll("reactor", calPos, posAndBox.box, 0)
		if _ReactorAttack:ReactorAttack(reactorBox) then
			_SkillData:GetNormalSound(self.sfx)
			self:SpecialAction(skillID, motion, calcAttackSpeed, masteryEff, lastTick)
			return 1
		end
		
		box = simul:OverlapBoxAll("monster", calPos, posAndBox.box, 0)
		self:RangeUI(calPos, posAndBox.box, nil)
		
		if self.attack == 3 or self.attack == 4 or self.attack == 7 or self.attack == 9 then
			local mobCount = 0
			for key, value in pairs(box) do
				if not value.Enable then
					continue
				end
				local mobInfo = value.Entity.MobInfo
				if mobInfo ~= nil and mobInfo:IsAlive() then
					mobCount = 1
					break
				end
			end
			if not isSoulArrow then
				throwSlot = player.PlayerInventory:CalcThrow(0, weaponID, 1, stats.level)
			end
			if self.attack >= 3 and self.attack <= 4 then
				if (isSoulArrow or not _UtilLogic:IsNilorEmptyString(throwSlot)) and not _PlayerComponent.rigid:IsOnGround() then
					return 0
				end
			end
			if mobCount == 0 and (isSoulArrow or not _UtilLogic:IsNilorEmptyString(throwSlot)) then
				local range = Vector2(1, 0.4)
				if self.attack == 3 or self.attack == 4 then
					if self.attack == 3 then
						motion = "shoot1"
					else
						motion = "shoot2"
					end
					local x = 2.5 + playerSkill.rangeX / 100 + 0.3
					local y = 1 -- 2
					range.x = x
					local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
					local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.2), 0)
					self:RangeUI(nPos, Vector2(x - y, 1.2), Vector3(0, 255, 0))
					for key, value in pairs(nBox) do
						if not value.Enable then
							continue
						end
						local mobInfo = value.Entity.MobInfo
						if mobInfo ~= nil and mobInfo:IsAlive() then
							firstMobTable[value.Entity] = true
						end
					end
				elseif self.attack == 7 then
					motion = "swingO" .. math.random(1, 3)
					local x = 2 + playerSkill.rangeX / 100 
					local y = 1 -- 1.5
					range.x = x
					local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
					local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.5), 0)
					self:RangeUI(nPos, Vector2(x - y, 1.5), Vector3(0, 255, 0))
					for key, value in pairs(nBox) do
						if not value.Enable then
							continue
						end
						local mobInfo = value.Entity.MobInfo
						if mobInfo ~= nil and mobInfo:IsAlive() then
							firstMobTable[value.Entity] = true
						end
					end
				elseif self.attack == 9 then
					motion = "shot"
					local x = 2
					local y = 0.75
					range.x = x
					local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
					local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.2), 0)
					self:RangeUI(nPos, Vector2(x - y, 1.2), Vector3(0, 255, 0))
					for key, value in pairs(nBox) do
						if not value.Enable then
							continue
						end
						local mobInfo = value.Entity.MobInfo
						if mobInfo ~= nil and mobInfo:IsAlive() then
							firstMobTable[value.Entity] = true
						end
					end
					--isNormalMotion = false
				end
				local calcVec = playerPos + Vector2((isLeft and -range.x or range.x) / 2, 0)
				box = simul:OverlapBoxAll("monster", calcVec, range, 0)
				self:RangeUI(calcVec, range, Vector3(0, 255, 0))
				_SkillData:GetNormalRangeSound(self.attack)
				isRangeAttack = true
			else
				throwSlot = nil
			end
		end
	end
	_SkillData:GetNormalSound(self.sfx)
    --if throwSlot == nil then
    --    _SkillData:GetNormalSound(self.sfx)
    --end
	
    --if isNormalMotion then
    --    self:NormalAction(motion, calcAttackSpeed)
    --else
    --    self:SpecialAction(motion, calcAttackSpeed)
    --end
elseif finalAttack > 0 then -- 파이널 어택
	local finalLevel = playerSkill:GetTotalSkillLevel(skillID)
	skillLevel = playerSkill:GetTotalSkillLevel(finalAttack)
	local oriSkillInfo = _SkillInfo:SkillInfo(finalAttack, skillLevel)
	local finalInfo = _SkillInfo:SkillInfo(skillID, finalLevel)
	
	monsterAttackCount = _GameUtil:ConvertValue(oriSkillInfo["mobCount"], 1)
	motion = _SkillData:GetFinalMotion(self.attack)
	if motion == nil then
		return 1
	end
	
	local baseRange = _GameUtil:ConvertValue(oriSkillInfo["baseRange"], 0)
	if baseRange >= 1 then
		if not isSoulArrow then
			local throwConsume = _GameUtil:ConvertValue(oriSkillInfo["throwConsume"], 0)
			if throwConsume > 0 then
				throwSlot = player.PlayerInventory:CalcThrow(0, stats.weaponID, throwConsume, stats.level)
				if _UtilLogic:IsNilorEmptyString(throwSlot) then
					return 1
				end
			end
		end
		local zeroAttack = _GameUtil:ConvertValue(oriSkillInfo["zeroAttack"], 0)
		if zeroAttack > 0 then
			local zeroMotion = _SkillData:GetNormalRandMotion(self.attack)
			local posAndBox = _SkillData:GetZeroRange(weaponName .. "_" .. zeroMotion)
			if posAndBox == nil then
				return 1
			end
			
			local calPos = playerBasePos + Vector2(isLeft and -posAndBox.pos.x or posAndBox.pos.x, posAndBox.pos.y)
			local zeroBox = simul:OverlapBoxAll("monster", calPos, posAndBox.box, 0)
			self:RangeUI(calPos, posAndBox.box, nil)		
			for key, value in pairs(zeroBox) do
				if not value.Enable then
					continue
				end
				local mobInfo = value.Entity.MobInfo
				if mobInfo ~= nil and mobInfo:IsAlive() then
					return 1
				end
			end
		end
		isRangeAttack = true
		
		local x = 2.5 + playerSkill.rangeX / 100 + 0.3
		local y = 1 -- 2
		range = Vector2(x, 0.4)
		local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
		local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.24), 0)
		self:RangeUI(nPos, Vector2(x - y, 1.24), Vector3(0, 255, 0))
		for key, value in pairs(nBox) do
			if not value.Enable then
				continue
			end
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				firstMobTable[value.Entity] = true
			end
		end
		local calcVec = playerPos + Vector2((isLeft and -range.x or range.x) / 2, 0)
		box = simul:OverlapBoxAll("monster", calcVec, range, 0)
		self:RangeUI(calcVec, range, nil)
	else
		local no = _SkillData:GetNormalRange(weaponName .. "_" .. motion)
		if no == nil then
			return 1
		end
		
		local range = no.box:Clone()
		local skillPos = no.pos:Clone()
		
		local calcVec = playerBasePos + Vector2(isLeft and -skillPos.x or skillPos.x, skillPos.y)
		box = simul:OverlapBoxAll("monster", calcVec, range, 0)
		self:RangeUI(calcVec, range, nil)
		
	    local splash = _GameUtil:ConvertValue(oriSkillInfo["splash"], 0)
	    if splash > 0 and range.x * 100 < splash then
			local splashCheck = false
			for k, v in pairs(box) do
				if not v.Enable then
					continue
				end
				---@type Entity
				local entity = v.Entity
				if entity.MobInfo:IsAlive() then
					splashCheck = true
					break
				end
			end
			if splashCheck then
				local calValue = (splash / 100 - range.x) / 2
				calcVec.x += (isLeft and -1 or 1) * calValue
				range.x = splash / 100
				box = simul:OverlapBoxAll("monster", calcVec, range, 0)
				self:RangeUI(calcVec, range, Vector3(0.5, 0.5, 0.5))
			end
	    end
	end
	
	--self:SpecialAction(motion, calcAttackSpeed)
else
	skillLevel = playerSkill:GetTotalSkillLevel(skillID)
	if skillLevel <= 0 then
		_MessageLogic:ShowMessage("스킬 레벨이 존재하지 않습니다.")
		return 1
	end
	skillInfo = _SkillInfo:SkillInfo(skillID, skillLevel)
	local linkSkill = _GameUtil:ConvertValue(skillInfo["linkSkill"], 0)
	if linkSkill > 0 and playerSkill:GetTotalSkillLevel(linkSkill) > 0 then
		self:Gain(linkSkill, lastTick, finalAttack, charge)
		return
	end
	
	local isMoveSkill = _GameUtil:ConvertValue(skillInfo["moveSkill"], 0) > 0
	
	if isMoveSkill then
		local fieldLimit = player.CurrentMap.MapInfo.fieldLimit
		if _FieldLimit:Check(fieldLimit, _FieldLimit.MoveSkill) then
			return 1
		end
	end
	
	local coolTime = _GameUtil:ConvertValue(skillInfo["cooltime"], 0)
	if coolTime > 0 and not playerSkill:CheckCoolTime(skillID, lastTick) then
		_MessageLogic:ShowMessage("아직은 스킬을 사용할 수 없습니다.")
		return 1
	end
	local hitCooltime = _GameUtil:ConvertValue(skillInfo["hitCoolTime"], 0)
	if hitCooltime > 0 and not playerSkill:CheckHitCoolTime(skillID, lastTick) then
		return 1
	end
	
	local delayTime = _GameUtil:ConvertValue(skillInfo["delayTime"], 0)
	if delayTime > 0 then
		local nextTime = self.delayTime[skillID]
		if nextTime ~= nil and nextTime > lastTick then
			return 1
		end
	end
	
	local hpCon = _GameUtil:ConvertValue(skillInfo["hpCon"], 0)
	local hpRCon = _GameUtil:ConvertValue(skillInfo["hpRCon"], 0)
	isRapid = _GameUtil:ConvertValue(skillInfo["rapid"], 0) > 0
	roar = _GameUtil:ConvertValue(skillInfo["roarStun"], 0)
	if roar > 0 and stats.hp < stats.currentHp / 2 then
		_MessageLogic:ShowMessage("HP가 부족하여 스킬을 사용할 수 없습니다.")
		return 1
	end
	if hpRCon > 0 then
		hpCon += math.floor(hpRCon / 100 * stats.currentHp)
	end
	if hpCon > 0 and stats.hp < hpCon + 1 then
		_MessageLogic:ShowMessage("HP가 부족하여 스킬을 사용할 수 없습니다.")
		return 1
	end
	local mpCon = _GameUtil:ConvertValue(skillInfo["mpCon"], 0)
	if _GameUtil:JobType(math.floor(skillID / 10000)) == 2 and playerSkill.mpAmplification > 0 then
		mpCon = math.floor(mpCon * (playerSkill.mpAmplification + 100) / 100)
	end
	if playerBuff.incManaRate > 0 then
		mpCon = math.ceil(mpCon * (100 - playerBuff.incManaRate) * 0.01)
	end
	if playerBuff.incInfinity > 0 then
		mpCon = 0
	end
	if mpCon > 0 and stats.mp < mpCon then
		_MessageLogic:ShowMessage("MP가 부족하여 스킬을 사용할 수 없습니다.")
		return 1
	end
	
	local oneHand = _GameUtil:ConvertValue(skillInfo["oneHand"], 0)
	if oneHand > 0 and not _GameUtil:IsOneHand(weaponID) then
		_MessageLogic:ShowMessage("한손 무기를 장착한 상태에서만 스킬을 사용할 수 있습니다.")
		return 1
	end
	
	local conCombo = _GameUtil:ConvertValue(skillInfo["conCombo"], 0)
	if conCombo > 0 and playerBuff.combo < conCombo then
		return 1
	end

	local jumpAttack = _GameUtil:ConvertValue(skillInfo["jumpAttack"], 0)
	if jumpAttack == 0 and not _PlayerComponent.rigid:IsOnGround() and not _PlayerWeather.swim then
		return 2
	end
	
	local weapons = skillInfo["weapon"]
	if weapons ~= nil then
		local checkWeapon = false
		local weaponType = math.floor(weaponID / 10000)
		for _, weapon in pairs(weapons) do
			if weapon == weaponType then
				checkWeapon = true
				break
			end
		end
		if not checkWeapon then
			_MessageLogic:ShowMessage("장착한 무기로는 사용할 수 없는 스킬입니다.")
			return 1
		end
	end
	
	local canMorph = skillInfo["canMorph"]
	if canMorph ~= nil then
		local checkMorph = false
		for _, morph in pairs(canMorph) do
			if morph == playerBuff.incMorph then
				checkMorph = true
				break
			end
		end
		if not checkMorph then
			_MessageLogic:ShowMessage("변신 중에만 사용할 수 있는 스킬입니다.")
			return 1
		end
	end
	
	local canTaming = _GameUtil:ConvertValue(skillInfo["canTaming"], 0)
	if canTaming > 0 then
		if playerBuff.incTaming ~= canTaming then
			_MessageLogic:ShowMessage("배틀쉽 탑승 중에만 사용할 수 있는 스킬입니다.")
			return 1
		end
	end
	
	local conBuff = skillInfo["conBuff"]
	if conBuff ~= nil then
		if not _SkillEnd:ConBuff(player, conBuff) then
			return 1
		end
	end
	
	local canEnergy = _GameUtil:ConvertValue(skillInfo["canEnergy"], 0)
	if canEnergy > 0 and not playerSkill.energyState then
		_MessageLogic:ShowMessage("에너지가 완충된 상태에서만 사용할 수 있는 스킬입니다.")
		return 1
	end
	
	local moneyCon = _GameUtil:ConvertValue(skillInfo["moneyCon"], 0)
	if moneyCon > 0 and player.PlayerInventory:GetMeso() < moneyCon then
		_MessageLogic:ShowMessage("스킬을 사용하는 데 필요한 메소가 부족합니다.")
		return 1
	end
	
	local skillAttackSpeed = _GameUtil:ConvertValue(skillInfo["attackSpeed"], 0)
	
	if not isSoulArrow then
		local canConsume = _GameUtil:ConvertValue(skillInfo["canConsume"], 0)
		local throwConsume = _GameUtil:ConvertValue(skillInfo["throwConsume"], 0)
		if throwConsume > 0 then
			throwSlot = player.PlayerInventory:CalcThrow(canConsume, stats.weaponID, throwConsume, stats.level)
			if _UtilLogic:IsNilorEmptyString(throwSlot) then
				--fixZero = true
				isRapid = false
				isRangeAttack = false
				throwSlot = nil
				skillID = 0
				goto back
			end
		end
	end

	local zeroAttack = _GameUtil:ConvertValue(skillInfo["zeroAttack"], 0)
	if zeroAttack > 0 then
		local zeroMotion = _SkillData:GetNormalRandMotion(self.attack)
		local posAndBox = _SkillData:GetZeroRange(weaponName .. "_" .. zeroMotion)
		if posAndBox == nil then
			if Environment:IsMakerPlay() then
				log(weaponName .. "_" .. zeroMotion .. " nil")
			end
			return 1
		end
		local calPos = playerBasePos + Vector2(isLeft and -posAndBox.pos.x or posAndBox.pos.x, posAndBox.pos.y)
		local zeroBox = simul:OverlapBoxAll("monster", calPos, posAndBox.box, 0)
		self:RangeUI(calPos, posAndBox.box, nil)		
		for key, value in pairs(zeroBox) do
			if not value.Enable then
				continue
			end
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				if math.floor(weaponID / 10000) == playerSkill.mortalWeapon and playerSkill.mortalBlow > 0 and math.random(1, 100) <= playerSkill.mortalBlowRand then
					box = zeroBox
					skillID = playerSkill.mortalBlow
					goto back
				end
				
				motion = zeroMotion
				box = zeroBox
				fixZero = true
				isRapid = false
				skillID = 0
				isRangeAttack = false
				throwSlot = nil
				goto back
			end
		end
	end
	
	local motions = skillInfo["motion"]
	if motions ~= nil then
		motion = motions[math.random(1, #motions)]
	elseif skillID == 1121008 or skillID == 11111004 then
		if weaponID < 1400000 then
			motion = "brandish1"
		else
			motion = "brandish2"
		end
	else
		motion = _SkillData:GetSkillMotion(skillID)
		if motion == nil then
			--isNormalMotion = true
			if self.attack == 3 then
				motion = "shoot1"
			elseif self.attack == 4 then
				motion = "shoot2"
			elseif self.attack == 7 then
				motion = "swingO" .. math.random(1, 3)
			elseif self.attack == 9 then
				motion = "shot"
			else
				motion = _SkillData:GetNormalRandMotion(self.attack)
			end
		end
	end
	
	local skillPos = skillInfo["skillPos"]
	local range
	local baseRange = _GameUtil:ConvertValue(skillInfo["baseRange"], 0)
	if baseRange == 1 then
		local x = 2.5 + playerSkill.rangeX / 100 + 0.3
		local y = 1 -- 2
		range = Vector2(x, 0.4)
		local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
		local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.24), 0)
		self:RangeUI(nPos, Vector2(x - y, 1.24), Vector3(0, 255, 0))
		for key, value in pairs(nBox) do
			if not value.Enable then
				continue
			end
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				firstMobTable[value.Entity] = true
			end
		end
		isRangeAttack = true
	elseif baseRange == 2 then
		local x = 2 + playerSkill.rangeX / 100 
		local y = 1 -- 1.5
		range = Vector2(x, 0.4)
		local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
		local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.5), 0)
		self:RangeUI(nPos, Vector2(x - y, 1.5), Vector3(0, 255, 0))
		for key, value in pairs(nBox) do
			if not value.Enable then
				continue
			end
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				firstMobTable[value.Entity] = true
			end
		end
		isRangeAttack = true
	elseif baseRange == 3 then
		local nRange = _GameUtil:ConvertValue(skillInfo["skillRangeX"], 0)
		range = Vector2(nRange / 100, 0.4)
		isRangeAttack = true
	elseif baseRange == 4 then
		local x = 2.5 + playerSkill.rangeX / 100
		range = Vector2(x, 0.4) 
		isRangeAttack = true
	elseif baseRange == 5 then
		local x = 2 + playerSkill.rangeX / 100
		range = Vector2(x, 0.7)
		isRangeAttack = true
	else
		range = skillInfo["skillRange"]
		if range == nil then
			local no = _SkillData:GetNormalRange(weaponName .. "_" .. motion)
			if no ~= nil then
				range = no.box
				skillPos = Vector2(-no.pos.x, no.pos.y)
			else
				range = Vector2(0.3, 0.3)
			end
		end
	end
	local setRange = _GameUtil:ConvertValue(skillInfo["setRange"], 0)
	if setRange > 0 then
		isRangeAttack = true
	end
	
	local yRange = _GameUtil:ConvertValue(skillInfo["yRange"], 0)
	if yRange > 0 then
		local x = range.x
		local y = yRange / 100
		local nPos = playerPos + Vector2((isLeft and -1 or 1) * (x + y) / 2, 0)
		local nBox = simul:OverlapBoxAll("monster", nPos, Vector2(x - y, 1.2), 0)
		self:RangeUI(nPos, Vector2(x - y, 1.2), Vector3(0, 255, 0))
		for key, value in pairs(nBox) do
			if not value.Enable then
				continue
			end
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				firstMobTable[value.Entity] = true
			end
		end
	end	
	
	local heal = _GameUtil:ConvertValue(skillInfo["heal"], 0)
	if heal > 0 then
		local nRange = skillInfo["partyBuff"]
		self:RangeUI(playerBasePos, nRange, Vector3(255, 255, 0))
		if player.PlayerParty.partyIndex > 0 then
			local playerBox = simul:OverlapBoxAll("player", playerBasePos, nRange, 0)
			for _, v in pairs(playerBox) do
				if v.Entity == player then
					continue
				end
				table.insert(healPlayers, v.Entity)
			end
		end
		isHeal = true
	end
	
	local mesoCount = _GameUtil:ConvertValue(skillInfo["mesoCount"], 0)
	if mesoCount > 0 then
		local mesoRange = Vector2(3, 0.8)
		local calcVec = playerBasePos + Vector2((isLeft and -mesoRange.x or mesoRange.x) / 2, mesoRange.y / 2)
		local mesoBox = simul:OverlapBoxAll("item", calcVec, mesoRange, 0)
		self:RangeUI(calcVec, mesoRange, Vector3(255, 0, 0))
		
		for k, v in pairs(mesoBox) do
			local item = v.Entity
			if not item.TriggerComponent.Enable then
				continue
			end
			local di = item.DropItem
			
			if di ~= nil and di.id == 0 and di.quantity > 0 and di.pickup == false then
				table.insert(healPlayers, item)
			end
		end
		isLastMobCalc = false
	elseif skillPos == nil then
		local py = _GameUtil:ConvertValue(skillInfo["skillPosY"], 0)
		local calcVec = playerPos + Vector2((isLeft and -range.x or range.x) / 2, py / 100)
		box = simul:OverlapBoxAll("monster", calcVec, range, 0)
		self:RangeUI(calcVec, range, nil)
	else
		local calcVec = playerBasePos + Vector2(isLeft and skillPos.x or -skillPos.x, skillPos.y)
		box = simul:OverlapBoxAll("monster", calcVec, range, 0)
		self:RangeUI(calcVec, range, nil)
	end
	
    local splash = _GameUtil:ConvertValue(skillInfo["splash"], 0)
    if splash > 0 then
		local splashBox = {}
		local splashCheck = false
		for k, v in pairs(box) do
			if not v.Enable then
				continue
			end
			---@type Entity
			local entity = v.Entity
			if entity.MobInfo:IsAlive() then
				splashCheck = true
				break
			end
		end
		if splashCheck then
			local nRange = Vector2(splash / 100, range.y)
			local calcVec = playerPos + Vector2((isLeft and -1 or 1) * nRange.x / 2, 0)
			box = simul:OverlapBoxAll("monster", calcVec, nRange, 0)
			self:RangeUI(calcVec, nRange, nil)
		end
    end
	
	---@type Vector2
    local splash2 = skillInfo["splash2"]
    if splash2 ~= nil then
		local splashBox = {}
		local splashCheck = false
		for k, v in pairs(box) do
			if not v.Enable then
				continue
			end
			---@type Entity
			local entity = v.Entity
			if entity.MobInfo:IsAlive() then
				splashCheck = true
				break
			end
		end
		if splashCheck then
			box = simul:OverlapBoxAll("monster", playerBasePos, splash2, 0)
			self:RangeUI(playerBasePos, splash2, nil)
		end
    end
	
	local arrowBomb = skillInfo["arrowBomb"]
	if arrowBomb ~= nil then
		local bombTable = {}
		for key, value in pairs(box) do
			if not value.Enable then
				continue
			end
			---@type MobInfo
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				firstMobTable[value.Entity] = true
			end
		end
		for k, v in pairs(firstMobTable) do
			table.insert(bombTable, k)
		end
		_SkillHelper:SortMonsters(bombTable, playerPos)
		
		---@type Entity
		local bombMonster = bombTable[1]
		if bombMonster ~= nil then
			local bombPos = bombMonster.TransformComponent.WorldPosition:ToVector2() + bombMonster.TriggerComponent.ColliderOffset
			box = simul:OverlapBoxAll("monster", bombPos, arrowBomb, 0)
			self:RangeUI(bombPos, arrowBomb, Vector3(255, 255, 0))
			local bombMonsters = {}
			for key, value in pairs(box) do
				if not value.Enable then
					continue
				end
				---@type MobInfo
				local mobInfo = value.Entity.MobInfo
				if mobInfo ~= nil and mobInfo:IsAlive() then
					table.insert(mobTable, value.Entity)
				end
				_SkillHelper:SortMonsters(mobTable, bombPos)
			end
			isLastMobCalc = false
		end
	end

	monsterAttackCount = _GameUtil:ConvertValue(skillInfo["mobCount"], 1)
	
	local chain = skillInfo["chain"]
	if chain ~= nil then
		local checkTable = {}
		for key, value in pairs(box) do
			if not value.Enable then
				continue
			end
			---@type MobInfo
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				checkTable[value.Entity] = true
			end
		end
		local chTable = {}
		if _Util:IsTableEmpty(checkTable) then
			for k, _ in pairs(firstMobTable) do
				table.insert(chTable, k)
			end
		else
			for k, _ in pairs(checkTable) do
				table.insert(chTable, k)
			end
		end
		_SkillHelper:SortMonsters(chTable, playerPos)
		
		local firstMob = chTable[1]
		if firstMob ~= nil then
			local chX = 1.3
			local chY = 1.8
			local chainTable = {}
			---@type Vector2
			local chPos = firstMob.TransformComponent.WorldPosition:ToVector2() + firstMob.TriggerComponent.ColliderOffset
			
			for idx = 1, monsterAttackCount do
				local oriLen = _Util:TableKeyLen(chainTable)
				if idx == 1 then
					chainTable[firstMob] = true
					oriLen = 1
				end
				if oriLen >= 6 then
					break
				end

				self:BoxMonster2(chainTable, chPos + Vector2((isLeft and -chX or chX) / 2, 0), Vector2(chX, chY))
				local len = _Util:TableKeyLen(chainTable)
				
				if len == oriLen or len >= monsterAttackCount then
					break
				end

				chPos.x += isLeft and -chX or chX
			end
			
			if not _Util:IsTableEmpty(chainTable) then
				for k, _ in pairs(chainTable) do
					table.insert(mobTable, k)
				end
				_SkillHelper:SortMonsters(mobTable, playerPos)
			end
		end
		isLastMobCalc = false
	end
	
	local addForce = skillInfo["addForce"]
	if addForce ~= nil then
		_PlayerComponent:SeForce(Vector2(isLeft and addForce.x or -addForce.x, addForce.y))
	end
	
	local fixSpeed = _GameUtil:ConvertValue(skillInfo["fixSpeed"], 0)
	if fixSpeed > 0 then
		calcAttackSpeed = fixSpeed + playerBuff.attackSpeed + playerBuff.incInfusion
	else
		calcAttackSpeed += skillAttackSpeed
	end
	
	if finalAttack == 0 and playerBuff.finalRand > 0 and playerBuff.finalAttack > 0 then
		local ableFinal = _GameUtil:ConvertValue(skillInfo["ableFinal"], 0)
		if ableFinal > 0 and math.random(1, 100) <= playerBuff.finalRand then
			local delay = _SkillHelper:CalcSpeed(600, calcAttackSpeed)
			local func = function()
				self:Gain(playerBuff.finalAttack, _UtilLogic.ServerElapsedSeconds, skillID, 0)
			end
			_TimerService:SetTimerOnce(func, delay / 1000)
		end
	end
	
	if skillID == 4221001 then
		if finalAttack == 0 then
			local delay = 50 + _SkillHelper:CalcSpeed(1820, calcAttackSpeed)
			local func = function()
				local now = _UtilLogic.ServerElapsedSeconds
				if _RaidManager.nextAttackDelay < now then
					self:Gain(skillID, now, -skillID, 0)
				end
			end
			_TimerService:SetTimerOnce(func, delay / 1000)
		else
			motion = "assassinationS"
		end
	end
	
	masteryEff = _GameUtil:ConvertValue(skillInfo["noMastery"], 0) == 0
	noHitCancel = _GameUtil:ConvertValue(skillInfo["noHitCancel"], 0) > 0
	attackCount = _GameUtil:ConvertValue(skillInfo["attackCount"], 1)
	isHomingSkill = _GameUtil:ConvertValue(skillInfo["homing"], 0) > 0
	sMotion = true
	
	if delayTime > 0 then
		self.delayTime[skillID] = lastTick + delayTime / 1000
	end
end

if isLastMobCalc then
	if box ~= nil then
		for key, value in pairs(box) do
			if not value.Enable then
				continue
			end
			---@type MobInfo
			local mobInfo = value.Entity.MobInfo
			if mobInfo ~= nil and mobInfo:IsAlive() then
				if isHeal then
					if mobInfo.isUndead then
						firstMobTable[value.Entity] = true
					end
				else
					firstMobTable[value.Entity] = true
				end
			end
		end
	end
	
	local findHoming
	local isHoming = not isHomingSkill and isvalid(playerBuff.homingMonster)
	for key, value in pairs(firstMobTable) do
		---@type Entity
		local monster = key
		if isHoming then
			if playerBuff.homingMonster == monster and monster.MobInfo.obj == playerBuff.homingObj then
				findHoming = monster
				continue
			end
		end
		table.insert(mobTable, monster)
	end
	_SkillHelper:SortMonsters(mobTable, playerPos)
	
	if findHoming ~= nil then
		table.insert(mobTable, 1, findHoming)
	end
end

if not isRangeAttack and isSoulArrow then
	isSoulArrow = false
end

local finalMobTable = {}
local mobTableCount = 0
for k, v in pairs(mobTable) do
	mobTableCount += 1
	finalMobTable[mobTableCount] = v
	if mobTableCount >= monsterAttackCount then
		break
	end
end

if noHitCancel and mobTableCount == 0 then
	return 1
end

if mobTableCount > 0 then
	local hitInvincibility = _GameUtil:ConvertValue(skillInfo["hitInvincibility"], 0)
	if hitInvincibility > 0 then
		local cal = lastTick + hitInvincibility
		if _PlayerHitByMonster.nextHitTime < cal then
			_PlayerHitByMonster.nextHitTime = cal
		end
	end
	
	local hitMove = _GameUtil:ConvertValue(skillInfo["hitMove"], 0)
	if hitMove ~= 0 then
		local hitMoveDir = _GameUtil:ConvertValue(skillInfo["hitMoveDir"], 0)
		local footHoldCom =  player.CurrentMap.FootholdComponent
		local telPos = Vector2(_PlayerComponent.trans.WorldPosition.x + (isLeft and -hitMove or hitMove) / 100, _PlayerComponent.trans.WorldPosition.y)
		local footHold
		if hitMoveDir == 1 then
			footHold = footHoldCom:Raycast(telPos + Vector2(0, -0.1), Vector2(0, 1), 0.9)
			if footHold == nil then
				footHold = footHoldCom:Raycast(telPos + Vector2(0, 0.1), Vector2(0, -1), 0.9)
			end
			if footHold == nil then
				-- 갈 곳 없으면 리턴
				return 1
			end
		else
			footHold = footHoldCom:Raycast(telPos + Vector2(0, 0.1), Vector2(0, -1), 0.9)
			if footHold == nil then
				footHold = footHoldCom:Raycast(telPos + Vector2(0, -0.1), Vector2(0, 1), 0.9)
			end
		end
		if footHold ~= nil then
			local findPosX = telPos.x
			local findPosY = footHold:GetYByX(findPosX)
			_PlayerComponent.rigid:SetWorldPosition(Vector2(findPosX, findPosY))
		end
	end
	local hitSlide = _GameUtil:ConvertValue(skillInfo["hitSlide"], 0)
	if hitSlide ~= 0 then
		local firPos = _PlayerComponent.trans.WorldPosition.x
		local footHoldCom =  player.CurrentMap.FootholdComponent
		local tweenFunc = function(tweenValue)
			local telPos = Vector2(firPos + (isLeft and -tweenValue or tweenValue) / 100, _PlayerComponent.trans.WorldPosition.y)
			local footHold = footHoldCom:Raycast(telPos + Vector2(0, 0.1), Vector2(0, -1), 0.9)
			if footHold == nil then
				footHold = footHoldCom:Raycast(telPos + Vector2(0, -0.1), Vector2(0, 1), 0.9)
			end
			if footHold ~= nil then
				local findPosX = telPos.x
				local findPosY = footHold:GetYByX(findPosX)
				_PlayerComponent.rigid:SetWorldPosition(Vector2(findPosX, findPosY))
			end
		end
		_TweenLogic:PlayTween(0, hitSlide, 0.15, EaseType.Linear, tweenFunc)
	end
end

if not player.PlayerEvent.isEvent then
	local lastPos = _PlayerComponent.trans.Position.x
	local cal = math.abs(lastPos - self.lastPos)
	if cal < 0.25 then
		self.count += isRapid and 0.1 or 1
		if self.count >= 30 then
			if sMotion then
				self:SpecialAction(skillID, motion, calcAttackSpeed, masteryEff, lastTick)
			end
			_MessageLogic:ShowMessage("반복된 제자리 공격으로 취소되었습니다.")
			return 1
		end
	else
		self.count = 0
		self.lastPos = lastPos
	end
	
	if mobTableCount > 0 then
		if _SkillMove.lastNum >= 30 then
			if sMotion then
				self:SpecialAction(skillID, motion, calcAttackSpeed, masteryEff, lastTick)
			end
			_MessageLogic:ShowMessage("클릭이 감지되지 않아서 공격이 취소되었습니다.")
			return 1
		end
		_SkillMove.lastNum += isRapid and 0.1 or 1
	end
end

if finalAttack == -4221001 then
	local firPos = _PlayerComponent.trans.WorldPosition.x
	local footHoldCom =  player.CurrentMap.FootholdComponent
	local tweenFunc = function(tweenValue)
		local telPos = Vector2(firPos + (isLeft and -tweenValue or tweenValue) / 100, _PlayerComponent.trans.WorldPosition.y)
		local footHold = footHoldCom:Raycast(telPos + Vector2(0, 0.1), Vector2(0, -1), 0.9)
		if footHold == nil then
			footHold = footHoldCom:Raycast(telPos + Vector2(0, -0.1), Vector2(0, 1), 0.9)
		end
		if footHold ~= nil then
			local findPosX = telPos.x
			local findPosY = footHold:GetYByX(findPosX)
			_PlayerComponent.rigid:SetWorldPosition(Vector2(findPosX, findPosY))
		end
	end
	_TweenLogic:PlayTween(0, 100, 0.05, EaseType.Linear, tweenFunc)
	
	_SoundService:PlaySound("6e61dd3757c44b429288c5209691034e", 1)
else
	local effect = _SkillEffect:GetSkillEffect(skillID, skillLevel)
	if skillID == 1221009 then -- 차지 블로우
		local elemAttr = player.PlayerBuff.incElemAttr
		local useSound
		if elemAttr == 1 then
			useSound = "0ca1319352c74bf3bdeae52f367f6d47"
		elseif elemAttr == 2 then
			useSound = "4ce8eb0523774e6386dee386edd9e837"
		elseif elemAttr == 3 then
			useSound = "0be3801cd8d74d8ca6d8da0c435bf231"
		elseif elemAttr == 5 then
			useSound = "fce40fe9588a48d090952c64e0d9ae0a"
		else
			useSound = "97d557e1519944a9b7fd1decd9fa471e"
		end
		_SoundService:PlaySound(useSound, 1)
	end

	local useSound = effect["useSound"]
	if not _UtilLogic:IsNilorEmptyString(useSound) then
		_SoundService:PlaySound(useSound, 1)
	end
	local useSounds = effect["useSounds"]
	if useSounds ~= nil then
		for _, v in pairs(useSounds) do
			_SoundService:PlaySound(v, 1)
		end
	end
	
	local countSound = effect["countSound"]
	if not _UtilLogic:IsNilorEmptyString(countSound) then
		local baseDelay = _GameUtil:ConvertValue(effect["baseDelay"], 300) / 1
		local nextDelay = _GameUtil:ConvertValue(effect["rangeDelay"], 120)
		if playerBuff.incShadow > 0 then
			attackCount *= 2
		end
		local soundFunc = function()
			for idx = 1, attackCount do
				_SoundService:PlaySound(countSound, 1)
				wait(nextDelay / 1000)
			end
		end
		_TimerService:SetTimerOnce(soundFunc, baseDelay / 1000)
	end
end

local atRate = 1
if sMotion and not isRapid then
	atRate = self:SpecialAction(skillID, motion, calcAttackSpeed, masteryEff, lastTick)
end

if roar > 0 then
	self:RoarStun(roar)
end
if isRapid then
	_RaidManager.nextAttackDelay = lastTick + 0.105
	_RapidSkill:StartSkill(skillID)
	_SoundService:PlaySound(_RapidSkill:AttackSound(skillID), 1)
else
	_RapidSkill:EndSkill()
end

_SkillStart6:Attack(player, finalMobTable, skillID, isLeft, throwSlot, isProneStab, isRangeAttack, playerBasePos, lastTick, healPlayers, isSoulArrow, motion, math.max(2, calcAttackSpeed), finalAttack, charge)

if fixZero then
	return 2
end

return 0
end