return function (self,left,idx) 
if not self.Entity.MobInfo:IsAlive() then
	return
end

local pos = self.Entity.TransformComponent.WorldPosition
local spawn = _SpawnService:SpawnByModelId("model://b640aec6-1285-460a-86a5-94a7713f7f1c", "evBullet", pos + Vector3(0, 1.5, -idx), self.Entity.CurrentMap)
spawn.SpriteRendererComponent.SpriteRUID = "227abf2fad594018aaf46a7451c2f453"
spawn.TriggerComponent.BoxSize = Vector2(0.7, 1.7)
local scale = spawn.TransformComponent.Scale
scale.x = 2
scale.y = 2

local eb = spawn.EventBullet
eb.effect = "2b0a040954e2439c830a9184606ba31e"
eb.damage = 1
eb.speed = 12
eb.leftShiled = left and -1 or 1

local time = 4
_TweenLogic:MoveOffset(spawn, Vector2(0, 1.5), time / 2, EaseType.Linear)

local bulletStart = function()
	if not self.Entity.MobInfo:IsAlive() then
		spawn:Destroy()
		return
	end
	local vec = _UserService.LocalPlayer.TransformComponent.WorldPosition - spawn.TransformComponent.WorldPosition
	local dirVec = Vector2.Normalize(vec:ToVector2())
	eb:StartChase(dirVec, 3)
end

_TimerService:SetTimerOnce(bulletStart, time)
end