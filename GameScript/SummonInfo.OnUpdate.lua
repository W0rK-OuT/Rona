return function (self,delta) 
if not self.start then
	return
end
self.tick += delta
if self.type == 2 or self.type == 3 then
	self._T.moveTime += delta
end

if self.tick >= self.nextTick then
	self.tick = 0
	
	if not _UserService.LocalPlayer.PlayerStats:IsActing() then
		goto go
	end
	local stateName = _PlayerComponent.state.CurrentStateName
	if stateName == "CLIMB" or stateName == "LADDER" then
		goto go
	end
	
	local now = _UtilLogic.ServerElapsedSeconds
	if self.attackTick >= now then
		goto go
	end
	
	if self.id == 1321007 then
		local num = 0
		local player = _UserService.LocalPlayer
		local ps = player.PlayerSummon
		
		if num == 0 and player.PlayerSkill.beholderBCTime > 0 then
			if ps.skillCount < now then
				ps.skillCount = now + player.PlayerSkill.beholderBCTime
				local level = math.min(25, player.PlayerSkill:GetTotalSkillLevel(1320009))
				local buffID = 2022125 - 1
				local lastIndex = math.ceil(level / 5)
				for idx = 1, lastIndex do
					if player.PlayerBuff.buffs[-(buffID + idx)] == nil then
						if idx == lastIndex and player.PlayerBuff:HasBuff("pad") > 3 * (level - 20) then
							continue
						end
						num = idx + 1
						break
					end
				end
			end
		end
		
		if num == 0 and player.PlayerSkill.beholderHCTime > 0 then
			if player.PlayerStats.hp < player.PlayerStats.currentHp and ps.healCount < now then
				ps.healCount = now + player.PlayerSkill.beholderHCTime
				num = 1
			end
		end
		
		if num <= 0 or num >= 7 then
			goto go
		end
		
		local pos = self.Entity.TransformComponent.WorldPosition
		local pPos = _PlayerComponent.trans.WorldPosition
		self.Entity.SpriteRendererComponent.FlipX = pPos.x >= pos.x
		
		self.attackTick = now + (num == 1 and 2.5 or 2)
		self:ChangeState("skill" .. num)
		_SummonAttack:SummonBuff(_UserService.LocalPlayer, self.index, num, now)
	else
		local attackInfo = _SummonData:GetAttack(self.id)
		if attackInfo ~= nil then	
			local attType = _SkillStart:ConvertValue(attackInfo["type"], 0)
			local range = attackInfo["range"]
			local r = range["r"] / 100
						
			---@type CollisionSimulator
			local simul = _SkillBegin.simulator
			local pos = self.Entity.TransformComponent.WorldPosition:ToVector2()
			local tri = self.Entity.TriggerComponent
			
			local isMonster = false
			local mobTable = {}
			local box = _SkillBegin:BoxMonster(pos + Vector2(0, attType == 0 and 0.4 or 0.6), Vector2(r, attType == 0 and 0.8 or 1.2))
			for k, _ in pairs(box) do
				table.insert(mobTable, k)
				isMonster = true
			end
			
			if isMonster then					
				table.sort(mobTable, function(a, b)
					return pos:Distance(a.TransformComponent.Position:ToVector2()) < pos:Distance(b.TransformComponent.Position:ToVector2()) end)
				
				---@type Entity
				local firstMonster = mobTable[1]
				local fPos = firstMonster.TransformComponent.WorldPosition:ToVector2()
				local isLeftAttack = pos.x > fPos.x
				
				local attackBox = {}
				local lt = range["lt"]
				local rb = range["rb"]
				if lt ~= nil and rb ~= nil then
					local nPos = Vector2((rb.x + lt.x) / 200, -(rb.y + lt.y) / 200)
					local nRange = Vector2((rb.x - lt.x) / 100, (rb.y - lt.y) / 100)
					
					attackBox = _SkillBegin:BoxMonster(fPos + Vector2(isLeftAttack and -nPos.x or nPos.x, nPos.y), nRange)
				end
				attackBox[firstMonster] = true
				
				if not _Util:IsTableEmpty(attackBox) then
					local useEffect = attackInfo["effect"]
					local effectAfter = _SkillStart:ConvertValue(attackInfo["effectAfter"], 0)
					if not _UtilLogic:IsNilorEmptyString(useEffect) then
						local effDelay = function()
							_EffectService:PlayEffectAttached(useEffect, self.Entity, Vector3.zero, 0, Vector3.one)
						end
						_TimerService:SetTimerOnce(effDelay, effectAfter / 1000)
					end
					
					self.Entity.SpriteRendererComponent.FlipX = not isLeftAttack
					if self.id == 5220002 then
						self.attackTick = now + 3.03 / 2
						self:ChangeState(self.firstAttack and "attack1" or "attack2")
						self.firstAttack = not self.firstAttack
					else
						self.attackTick = now + 3.03
						self:ChangeState("attack1")
					end
					_SummonAttack:SummonAttack(_UserService.LocalPlayer, attackBox, isLeftAttack, self.index, now)
					return
				end
			end
		end
	end
end

::go::

if self.state ~= "stand" then
	return
end

if self.type >= 1 and self.type <= 2 then
	local des = _PlayerComponent.trans.WorldPosition
	local pos = self.Entity.TransformComponent.WorldPosition

	if math.abs(des.x - pos.x) >= 3 or math.abs(des.y - pos.y) >= 1.5 then
		pos.x = des.x
		pos.y = des.y
		_EffectService:PlayEffectAttached("f7a0e0bb7d34426ca61e8f5a20ed272c", self.Entity, Vector3.zero, 0, Vector3.one)
	end
end

if self.type == 1 then
	local des = _PlayerComponent.trans.WorldPosition
	local pos = self.Entity.TransformComponent.WorldPosition
	
	local calPos = Vector2(des.x - pos.x, des.y - pos.y):Normalize()
	local moveX = 0
	local moveY = 0
	if math.abs(des.x - pos.x) >= 0.72 then
		moveX = 1
		self.Entity.SpriteRendererComponent.FlipX = calPos.x > 0
	end
	local disY = math.abs(des.y - pos.y)
	if disY >= 0.1 then
		moveY = 1
	end
	
	self.Entity.TransformComponent:Translate(moveX * calPos.x * 0.01 * 5, moveY * calPos.y * 0.01 * 5)
elseif self.type == 2 then
	if self._T.moveTime >= self._T.nextMoveTime then
		self._T.moveTime = 0
		self._T.nextMoveTime = math.random(500, 1250) / 1000
		
		local des = _PlayerComponent.trans.WorldPosition
		local pos = self.Entity.TransformComponent.WorldPosition
		
		if pos.x < des.x then
			self._T.dirX = 1
		else
			self._T.dirX = -1
		end
		self.Entity.SpriteRendererComponent.FlipX = self._T.dirX > 0
		
		local dirY = 0
		if pos.y < des.y then
			dirY = 1
		else
			dirY = -1
		end
		self._T.flyY2 = 1.5
		
		if dirY ~= self._T.dirY then
			self._T.flyY = 0
		end
		self._T.dirY = dirY
	end
	
	self._T.flyY2 -= delta
	if self._T.flyY2 < 0 then
		self._T.flyY2 = 0
	end
	
	if self._T.flyY2 <= 0 then
		self._T.flyY2 = 0
	end
	self._T.flyY += delta
	local posY = math.sin(3 * math.pi * self._T.flyY)
	
	self.Entity.TransformComponent:Translate(self._T.dirX * delta * 1.7, posY * self._T.dirY * delta * 1.5 + self._T.dirY * self._T.flyY2 * 0.01)
elseif self.type == 3 then
	if self._T.moveTime >= self._T.nextMoveTime then
		self._T.moveTime = 0
		self._T.nextMoveTime = math.random(500, 1250) / 1000
		
		local pos = self.Entity.TransformComponent.WorldPosition
		
		self._T.dirX = math.random(1, 2) == 1 and -1 or 1
		if pos.x < self._T.leftBox.x then
			self._T.dirX = 1
		elseif pos.x > self._T.rightBox.x then
			self._T.dirX = -1
		end
		self.Entity.SpriteRendererComponent.FlipX = self._T.dirX > 0
		
		local dirY = math.random(1, 2) == 1 and -1 or 1
		if pos.y < self._T.leftBox.y then
			dirY = 1
			self._T.flyY2 = 2
		elseif pos.y > self._T.rightBox.y then
			dirY = -1
			self._T.flyY2 = 2
		else
			self._T.flyY2 = 1.5
		end
		
		if dirY ~= self._T.dirY then
			self._T.flyY = 0
		end
		self._T.dirY = dirY
	end
	
	self._T.flyY2 -= delta
	if self._T.flyY2 < 0 then
		self._T.flyY2 = 0
	end
	
	if self._T.flyY2 <= 0 then
		self._T.flyY2 = 0
	end
	self._T.flyY += delta
	local posY = math.sin(3 * math.pi * self._T.flyY)
	
	self.Entity.TransformComponent:Translate(self._T.dirX * delta * 1.7, posY * self._T.dirY * delta * 1.5 + self._T.dirY * self._T.flyY2 * 0.01)
end
end