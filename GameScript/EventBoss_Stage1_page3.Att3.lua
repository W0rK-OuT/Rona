return function (self) 
local count = 6
local moveTable = {}
for i = 1, count do
	local moveRand = math.random(1, 10) <= 5 and 0 or 1
	moveTable[i] = moveRand
end

local mPos = self.Entity.TransformComponent.Position
local areaTable = {-8, -6, -4, -2, 0, 2, 4, 6, 8}
local attackPatton = function()
	for i = 1, count do
		local moveRand = moveTable[i]
		for key, value in pairs(areaTable) do
			_EffectService:PlayEffect("153f3a46501b46f6b2278f728cbd5434", self.Entity, mPos + Vector3(value + moveRand, 0, 0), 0, Vector3(1, 1, 1))
		end
		wait(0.6)
	end
end

local attackPatton2 = function()
	local offeset = Vector2(0.8, 10)
	for i = 1, count do
		local moveRand = moveTable[i]
		for key, value in pairs(areaTable) do
			local vec = mPos + Vector3(value + moveRand, 0, 0)
			_EffectService:PlayEffect("328092851d34404d946999b69e04b879", self.Entity, vec, 0, Vector3(1, 1, 1))
			_EventBossManager:AreaDamage(self.Entity, vec, offeset, 1, 0)
		end
		_SoundService:PlaySound("5b59c860a1944a5b8b67ea0864baf0ab", 0.8)
		wait(0.75)
	end
end

_TimerService:SetTimerOnce(attackPatton, 0)
_TimerService:SetTimerOnce(attackPatton2, 2)
end