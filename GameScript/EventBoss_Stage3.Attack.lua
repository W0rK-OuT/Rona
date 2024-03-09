return function (self,attackCount) 
if not _UserService.LocalPlayer.PlayerStats:IsActing() then
	return
end

local func = function()
	if isvalid(self.Entity) then
		if _UserService.LocalPlayer.RigidbodyComponent:IsOnGround() then
			local isLeft = _UserService.LocalPlayer.TransformComponent.WorldPosition.x < self.Entity.TransformComponent.WorldPosition.x
			_EventStatManager:EventDamage(true, isLeft and -1 or 1, 2, 0)
		end
		local offeset = Vector2(1.8, 10)
		local pos = self.Entity.TransformComponent.WorldPosition
		if attackCount == 2 then
			self:AreaAttack(pos + Vector3(0, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(-3.6, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(3.6, 0, 0), offeset)
		elseif attackCount == 4 then
			self:AreaAttack(pos + Vector3(-1.8, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(1.8, 0, 0), offeset)
		elseif attackCount == 6 then
			self:AreaAttack(pos + Vector3(0, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(-3.6, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(-1.8, 0, 0), offeset)
		elseif attackCount == 8 then
			self:AreaAttack(pos + Vector3(0, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(3.6, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(1.8, 0, 0), offeset)
		elseif attackCount == 10 then
			self:AreaAttack(pos + Vector3(0, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(-1.8, 0, 0), offeset)
			self:AreaAttack(pos + Vector3(1.8, 0, 0), offeset)
		end
	end
end
_TimerService:SetTimerOnce(func, 1)
end