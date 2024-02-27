return function (self,jump,alpha) 
self.remove = true

if jump then
	local pos = self.Entity.UITransformComponent.WorldPosition:ToVector2()
	self:Start(true, pos, pos, 0)
end

if alpha then
	---@type Color
	local color
	if self.Entity.SpriteGUIRendererComponent then
		color = self.Entity.SpriteGUIRendererComponent.Color
	else
		color = self.Entity.SpriteRendererComponent.Color
	end
	local tween = function(tweenValue)
		if isvalid(self.Entity) then
			color.a = tweenValue
		end
	end
	_TweenLogic:PlayTween(1, 0, 1, EaseType.Linear, tween)
end

self.Entity:Destroy(2)
end