return function (self) 
if not self.Entity.MobInfo:IsAlive() then
	return
end

local pos = self.Entity.TransformComponent.WorldPosition
local spawn = _SpawnService:SpawnByModelId("model://b640aec6-1285-460a-86a5-94a7713f7f1c", "evBullet", pos + Vector3(0, 1, 0), self.Entity.CurrentMap)
spawn.SpriteRendererComponent.SpriteRUID = "222ff387d0604744a4f73b39f84035c3"

local tri = spawn.TriggerComponent
tri.BoxSize = Vector2(0.2, 0.24)
tri.ColliderOffset = Vector2(0.18, 0.12)

local eb = spawn.EventBullet
eb.damage = 1
eb.speed = 3

local time = math.random(2, 10)
_TweenLogic:MoveOffset(spawn, Vector2(math.random(-6, 6), 3), time, EaseType.Linear)

local bulletStart = function()
	if not self.Entity.MobInfo:IsAlive() then
		spawn:Destroy()
		return
	end
	local vec = _UserService.LocalPlayer.TransformComponent.WorldPosition - spawn.TransformComponent.WorldPosition
	local dirVec = Vector2.Normalize(vec:ToVector2())
	eb:StartChase(dirVec, 10)
end

_TimerService:SetTimerOnce(bulletStart, time)
end