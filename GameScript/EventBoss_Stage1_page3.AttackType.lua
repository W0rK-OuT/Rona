return function (self,state) 
if state == "ATTACK" then
	self:JumpAttack()
elseif state == "ATTACK2" then
	local spawnCloud = function()
		for i = 1, 6 do
			local left = math.random(1, 2) == 1
			if left then
				_EffectService:PlayEffect("1df9df84074a47a89d70ef8243ca988f", self.Entity, self.Entity.TransformComponent.Position, 0, Vector3(2, 2, 1))
			else
				_EffectService:PlayEffect("2730ca6754904de19b85a836e1b5ce02", self.Entity, self.Entity.TransformComponent.Position, 0, Vector3(1, 1, 1))
			end
			self:SpawnBullet(left, i)
			wait(0.5)
		end
	end
	_TimerService:SetTimerOnce(spawnCloud, 0.5)
elseif state == "ATTACK3" then
	self:Att3()
elseif state == "SKILL3" then
	local offeset = Vector2(1.6, 10)
	local pos = self.Entity.TransformComponent.Position		
	if (self.count + 1) % 2 == 0 then
		self:AreaAttack(pos + Vector3(-7.5, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(-4.5, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(-1.5, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(1.5, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(4.5, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(7.5, 0, 0), offeset)
	else
		self:AreaAttack(pos + Vector3(0, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(3, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(6, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(9, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(-3, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(-6, 0, 0), offeset)
		self:AreaAttack(pos + Vector3(-9, 0, 0), offeset)
	end
	self.count = self.count + 1
elseif state == "SKILL2" then
	self:Cloud()
end
end