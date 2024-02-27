return function (self) 
local mPos = self.Entity.TransformComponent.WorldPosition
local pPos = _UserService.LocalPlayer.TransformComponent.WorldPosition
local spawn = _SpawnService:SpawnByModelId("model://6e8cc02c-9bbd-4b8a-aa7d-74d7a7867295", "스킬용", mPos + Vector3(0, 1, 0), self.Entity.CurrentMap)
local scale = spawn.TransformComponent.Scale
scale.x = 2
scale.y = 2
spawn.SpriteRendererComponent.SpriteRUID = "d0da113eaf554818b00cf50a51c3676e"

local delay = 0.5
local upPos = Vector2(0, 2.5)
local areaVec = Vector3(pPos.x, mPos.y, 0)
local cPos = -(mPos - areaVec)
_TweenLogic:MoveOffset(spawn, cPos:ToVector2() + upPos, delay, EaseType.Linear)
local change = function()
	self:AreaAttack(areaVec, Vector2(0.8, 10))
end
_TimerService:SetTimerOnce(change, delay)

spawn:Destroy(delay + 0.7)
end