return function (self,delta) 
self.spTime += delta
if self.spTime >= 30 then
	self.spTime = 0
	self:SpeicalMove()
end

local pWorld = self.parent.TransformComponent.WorldPosition
local stateName = self.parent.StateComponent.CurrentStateName
if stateName == "LADDER" or stateName == "CLIMB" then
	if self.Entity.RigidbodyComponent.Enable then
		self.Entity.RigidbodyComponent:SetPosition(Vector2(0, 0))
		self.Entity.RigidbodyComponent.MoveVelocity.x = 0
		self.Entity.RigidbodyComponent.Enable = false
		self.Entity.SpriteRendererComponent.SortingLayer = _UserService.LocalPlayer.AvatarRendererComponent.SortingLayer
	end
	self:ChangeMotion("hang")
	self.forceMove = false
	return
end

local mWorld = self.Entity.TransformComponent.WorldPosition
if self.motion == "hang" then
	self.Entity.RigidbodyComponent.Enable = true
	self:ChangeMotion("jump")
	self.forceMove = false
end

local disX = math.abs(mWorld.x - pWorld.x)
local disY = math.abs(mWorld.y - pWorld.y)

if disX >= 2.5 or disY >= 1.8 then
	if self.parent.RigidbodyComponent:IsOnGround() then
		_EffectService:PlayEffectAttached("59a792ec0d8c4e559bcd7e47ec51ee48", self.Entity, Vector3.zero, 0, Vector3.one)
		self.Entity.RigidbodyComponent:SetPosition(Vector2(0, 0.3))
		self.Entity.RigidbodyComponent.MoveVelocity.x = 0
		self:ChangeMotion("stand0")
		return
	end
end

if pWorld.y > mWorld.y + 0.3 then
	if self.parent.RigidbodyComponent:IsOnGround() and self.Entity.RigidbodyComponent:IsOnGround() and self.Entity.RigidbodyComponent.MoveVelocity.x ~= 0 then
		self:ChangeMotion("jump")
		self.Entity.RigidbodyComponent:JustJump(Vector2(0, 1))
	end
end

if self.forceMove then
	if disX <= 1 then
		self.forceMove = false
	else
		return
	end
end

self.nextMove += delta

if mWorld.x < pWorld.x - 2 then
	self.nextMove = self.nextRandMove / 2
	self.Entity.RigidbodyComponent.MoveVelocity.x = 1
	self.Entity.SpriteRendererComponent.FlipX = true
	self:ChangeMotion("move")
	self.forceMove = true
	return
elseif mWorld.x > pWorld.x + 2 then
	self.nextMove = self.nextRandMove / 2
	self.Entity.RigidbodyComponent.MoveVelocity.x = -1
	self.Entity.SpriteRendererComponent.FlipX = false
	self:ChangeMotion("move")
	self.forceMove = true
	return
end

if self.nextMove >= self.nextRandMove then
	self.nextMove = 0
	
	---@type CollisionSimulator
	local simul = _Tr0de2Manager.simulator
	local check = false
	local tri = self.Entity.TriggerComponent
	local box = simul:OverlapBoxAll("item", Vector2(mWorld.x, mWorld.y + tri.ColliderOffset.y), Vector2(4, tri.BoxSize.y), 0)
	for key, value in pairs(box) do
		local info = value.Entity.DropItem
		if info ~= nil and info:CheckPickup(self.parent, true) then
			local isRand = true
			if value.Entity.TransformComponent.WorldPosition.x < mWorld.x then
				isRand = false
			end
			self.Entity.RigidbodyComponent.MoveVelocity.x = isRand and 1 or -1
			self.Entity.SpriteRendererComponent.FlipX = isRand
			if self.Entity.RigidbodyComponent:IsOnGround() then
				self:ChangeMotion("move")
			end
			return
		end
	end
	if disX > 1 then
		self.forceMove = true
		local isRand = true
		if pWorld.x < mWorld.x then
			isRand = false
		end
		self.Entity.RigidbodyComponent.MoveVelocity.x = isRand and 1 or -1
		self.Entity.SpriteRendererComponent.FlipX = isRand
		if self.Entity.RigidbodyComponent:IsOnGround() then
			self:ChangeMotion("move")
		end
	else
		self.forceMove = false
		self.Entity.RigidbodyComponent.MoveVelocity.x = 0
		self:ChangeMotion("stand1")
	end
end
end