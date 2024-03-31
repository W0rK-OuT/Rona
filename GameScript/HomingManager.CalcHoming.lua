return function (self,monster,obj) 
if monster == nil or obj == 0 then
	self.homingMonster = nil
	return
end

local player = _UserService.LocalPlayer
if not isvalid(player) then
	return
end
local playerBuff = player.PlayerBuff
local myMonster = playerBuff.homingMonster
if playerBuff.homingObj ~= obj then
	if isvalid(myMonster) and myMonster == monster then
		local homing = monster:GetChildByName("homing")
		if homing ~= nil then
			homing:SetEnable(false)
		end
	end
else
	if isvalid(myMonster) then
		if myMonster == monster then
			if isvalid(self.homingMonster) and self.homingMonster ~= myMonster then
				local homing = self.homingMonster:GetChildByName("homing")
				if homing ~= nil then
					homing:SetEnable(false)
				end
			end
			self.homingMonster = monster
			local homing = monster:GetChildByName("homing")
			if homing == nil then
				local head = monster.MobInfo.head
				homing = _SpawnService:SpawnByModelId("model://2e0bb1b2-0567-4932-a3b8-6ccc53eb5194", "homing", Vector3(-head.x, head.y, -1), monster)
			end
			if player.PlayerSkill.homingDamage > 0 then
				homing.SpriteRendererComponent.SpriteRUID = "d78fb4a901fb417381ed7a76f184c0e4"
			else
				homing.SpriteRendererComponent.SpriteRUID = "aaf9764fc3fb4c89abc7c6fb0394e1f5"
			end
			homing:SetEnable(true)
		end
	end
end
end