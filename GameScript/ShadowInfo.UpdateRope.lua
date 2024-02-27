return function (self) 
if self._T.tween ~= nil and self._T.tween.IsPlaying then
	self._T.tween:Destroy()
end

local posX = self.Entity.TransformComponent.Position.y
local des = -0.4
local abs = math.abs(posX - des)
self._T.tween = _TweenLogic:MoveTo(self.Entity, Vector2(des, 0), abs / 0.4 * 0.25, EaseType.Linear)
end