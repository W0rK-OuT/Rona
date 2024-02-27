return function (self,isRope,isLeft) 
if self._T.tween ~= nil and self._T.tween.IsPlaying then
	self._T.tween:Destroy()
end

local posX = isRope and self.Entity.TransformComponent.Position.y or self.Entity.TransformComponent.Position.x
local des = isRope and -0.4 or (isLeft and 0.4 or -0.4)
local abs = math.abs(posX - des)
self.Entity.SpriteRendererComponent.FlipX = not isLeft
self._T.tween = _TweenLogic:MoveTo(self.Entity, Vector2(isRope and 0 or des, isRope and -0.4 or 0), abs / 0.8 * 0.25, EaseType.Linear)
end