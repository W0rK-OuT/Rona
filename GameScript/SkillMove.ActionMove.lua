return function (self,skillID) 
local player = _UserService.LocalPlayer

local playerBuff = player.PlayerBuff
if playerBuff.seal then
	return
end

local fieldLimit = player.CurrentMap.MapInfo.fieldLimit
if _FieldLimit:Check(fieldLimit, _FieldLimit.MoveSkill) then
	return
end

local now = _UtilLogic.ServerElapsedSeconds
if self.teleTime > now then
	return
end

local isLeft = _PlayerComponent.move:IsFaceLeft()
if not player.PlayerStats:IsActing() then
	return
end

if player.PlayerBuff.darkSight > 0 then
	return
end
if playerBuff.incTaming > 0 then
	return
end

local skillLevel = player.PlayerSkill:GetTotalSkillLevel(skillID)
if skillLevel <= 0 then
	_MessageLogic:ShowMessage("스킬 레벨이 존재하지 않습니다.")
	return
end
local skillInfo = _SkillInfo:SkillInfo(skillID, skillLevel)
local hpCon = _SkillStart:ConvertValue(skillInfo["hpCon"], 0)
if hpCon > 0 and player.PlayerStats.hp < hpCon + 1 then
	_MessageLogic:ShowMessage("HP가 부족하여 스킬을 사용할 수 없습니다.")
	return
end
local mpCon = _SkillStart:ConvertValue(skillInfo["mpCon"], 0)
if playerBuff.incManaRate > 0 then
	mpCon = math.ceil(mpCon * (100 - playerBuff.incManaRate) * 0.01)
end
if playerBuff.incInfinity > 0 then
	mpCon = 0
end
if mpCon > 0 and player.PlayerStats.mp < mpCon then
	_MessageLogic:ShowMessage("MP가 부족하여 스킬을 사용할 수 없습니다.")
	return
end

local stateName = _PlayerComponent.state.CurrentStateName
local teleport = _SkillStart:ConvertValue(skillInfo["teleport"], 0)
local flashJump = _SkillStart:ConvertValue(skillInfo["flashJump"], 0)
local wings = _SkillStart:ConvertValue(skillInfo["wings"], 0)

if teleport > 0 then
	--텔포 오른쪽 왼쪽은 아래 검사 -> 위 검사
	--위 : 위에서 아래로 검사
	--아래 : 아래에서 위로 검사
	if stateName == "LADDER" or stateName == "CLIMB" or stateName == "SIT" then
		return
	end
	if self.left and self.right then
		return
	end
	if self.up and self.down then
		return
	end
	if not _PlayerComponent.rigid:IsOnGround() then
		return
	end
	local calX
	local calY
	local type = 0
	if self.down then
		calX = 0
		calY = -teleport / 100
		type = 1
	elseif self.left then
		calX = -teleport / 100 
		calY = 0
	elseif self.right then
		calX = teleport / 100 
		calY = 0
	elseif self.up then
		calX = 0
		calY = teleport / 100
		type = 2
	else
		return
	end
	
	local footHoldCom =  player.CurrentMap.FootholdComponent
	local findPosX
	local findPosY
	local telPos = Vector2(_PlayerComponent.trans.WorldPosition.x + calX, _PlayerComponent.trans.WorldPosition.y + calY)
	if type == 0 then
		local footHold = footHoldCom:Raycast(telPos + Vector2(0, 0.1), Vector2(0, -1), 0.9)
		if footHold == nil then
			footHold = footHoldCom:Raycast(telPos + Vector2(0, -0.1), Vector2(0, 1), 0.9)
		end
		if footHold == nil then
			return
		end
		findPosX = telPos.x
		findPosY = footHold:GetYByX(findPosX)
	elseif type == 1 then -- 숙인 상태
		local footHold = footHoldCom:Raycast(telPos, Vector2(0, 1), teleport / 100 - 0.1)
		if footHold == nil then
			footHold = footHoldCom:Raycast(telPos, Vector2(0, -1), teleport / 100 + 0.1)
		end
		if footHold == nil then
			return
		end
		findPosX = telPos.x
		findPosY = footHold:GetYByX(findPosX)
        --for idx = 1, 3 do
        --    local footHold = footHoldCom:Raycast(telPos, Vector2(0, 1), teleport / 100 - 0.1)
        --    if footHold ~= nil then
        --        findPosX = telPos.x
        --        findPosY = footHold:GetYByX(findPosX)
        --        break
        --    end
        --    telPos.y -= 1
        --end
        --if findPosX == nil or findPosY == nil then
        --    return
        --end		
	elseif type == 2 then -- 위로
		local footHold = footHoldCom:Raycast(telPos, Vector2(0, -1), teleport / 100 + 0.1)
		if footHold == nil then
			return
		end
		findPosX = telPos.x
		findPosY = footHold:GetYByX(findPosX)
	end
	self.teleTime = now + self.teleCoolTime
	_PlayerComponent.rigid:SetWorldPosition(Vector2(findPosX, findPosY))
	_SoundService:PlaySound("2b584a8fe810409da35d7ab5673d2ae6", 1)
	self:ActionServer(skillID, player, now)
elseif flashJump > 0 then
	if stateName == "LADDER" or stateName == "CLIMB" or stateName == "SIT" then
		return
	end
	if self.jump then
		return
	end
	if _PlayerComponent.rigid:IsOnGround() then
		return
	end
	local realMoveX = _PlayerComponent.rigid.RealMoveVelocity.x
	local realMoveY = _PlayerComponent.rigid.RealMoveVelocity.y
	if realMoveY <= 0 then
		return
	end
	local dir = _PlayerComponent.move:IsFaceLeft() and -1 or 1
	_SoundService:PlaySound("14cbd48af5474ecc9ba5c133d5b28fac", 1)
	
	local calX = dir * (3 + flashJump / 100)
	
	local calY = (flashJump / 150) + realMoveY * 60
	if calY < 3.5 then
		calY = 3.5
	end
	calY = math.min(calY, flashJump / 100 + 4) -- 레벨당 최대 점프력
	if _PlayerWeather.swim then
		calX *= 1.35
		calY *= 1.35
		_PlayerWeather.jumpTime = _UtilLogic.ElapsedSeconds + 0.4
	end
	
	_PlayerComponent:SeForce(Vector2(calX, calY))
	self.jump = true
	self:ActionServer(skillID, player, now)
elseif wings > 0 then
	if stateName == "SIT" then
		return
	end
	local time = _SkillStart:ConvertValue(skillInfo["time"], 0)
	if self:StartWings(time, wings) then
		self:ActionServer(skillID, player, now)
	end
end
end