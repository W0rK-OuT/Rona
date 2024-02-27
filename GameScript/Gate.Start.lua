return function (self) 
if self.gate == 1 then
	self.Entity:SetVisible(true)
elseif self.gate == 2 then
	self.Entity:SetVisible(false)
elseif self.gate == 3 then
	self.Entity:SetVisible(true)
end

self.start = true
if self.gate == 1 then
	local color = self.Entity.SpriteRendererComponent.Color
	color.a = 0
	local tweenAlpha = function(tweenValue)
		color.a = tweenValue
	end
	_TweenLogic:MakeTween(0, 128 / 255, 1, EaseType.Linear, tweenAlpha):Play()
	wait(1)
end
end