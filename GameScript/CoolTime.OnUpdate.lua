return function (self,delta) 
if self.portalDelay < 0 then
	self.portalDelay += delta
end
if self.attackDelay < 0 then
	self.attackDelay += delta
end
if self.roofDelay < 0 then
	self.roofDelay += delta
end
if self.itemDelay < 0 then
	self.itemDelay += delta
end
self.lastMp += delta
if self.lastMp >= 10 then
	self.lastMp = 0
	local player = _UserService.LocalPlayer
	if self.playerStat:IsActing() and self.playerStat.mp < self.playerStat.currentMp then
		self.playerEtc:RecoveryMp(_UtilLogic.ServerElapsedSeconds)
	end
end

local stateName = _PlayerComponent.state.CurrentStateName
if stateName == "IDLE" then
	self.idleTime += delta
	if self.idleTime >= self.playerskill.recoverTime then
		if self.playerStat:IsActing() and self.playerStat.hp < self.playerStat.currentHp then
			self.playerEtc:RecoverHp(_UtilLogic.ServerElapsedSeconds, 0)
		end
		self.idleTime = 0
	end
else
	self.idleTime = 0
end
if stateName == "SIT" then
	self.sitTime += delta
	if self.sitTime >= 10 then
		if self.playerStat:IsActing() and self.playerStat.hp < self.playerStat.currentHp then
			self.playerEtc:RecoverHp(_UtilLogic.ServerElapsedSeconds, 1)
		end
		self.sitTime = 0
	end
else
	self.sitTime = 0
end
if (stateName == "LADDER" or stateName == "CLIMB") and _PlayerComponent.move.IsClimbPaused then
	local ropeTime = self.playerskill.ropeTime
	if ropeTime > 0 then
		self.ropeTime += delta
		if self.ropeTime >= ropeTime then
			if self.playerStat:IsActing() and self.playerStat.hp < self.playerStat.currentHp then
				self.playerEtc:RecoverRopeHp(_UtilLogic.ServerElapsedSeconds)
			end
			self.ropeTime = 0
		end
	end
else
	self.ropeTime = 0
end

if _SkillMove.wings then
	if _PlayerComponent.rigid.RealMoveVelocity.y < 0 then
		_PlayerComponent:SetGravity(_SkillMove.wingsValue / 1000)
		self.wingsTime += delta
		if self.wingsTime >= 0 then
			_SoundService:PlaySound("661414f9fc3d4f33959bfbd18bf7543e", 1)
			self.wingsTime = -0.5
		end
	else
		_PlayerComponent:SetGravity(1)
	end
end
end