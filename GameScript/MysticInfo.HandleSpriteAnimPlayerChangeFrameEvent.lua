return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ClimbableSpriteRendererComponent
-- Space: Client
---------------------------------------------------------
-- Sender: SpriteRendererComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local FrameIndex = event.FrameIndex
---------------------------------------------------------
if FrameIndex == 0 then
	local color = self.Entity.SpriteRendererComponent.Color
	local tween = function(tweenValue)
		color.a = tweenValue / 255
	end
	_TweenLogic:MakeTween(255, 128, 0.7, EaseType.Linear, tween):Play()
elseif FrameIndex == 1 then
	local color = self.Entity.SpriteRendererComponent.Color
	local tween = function(tweenValue)
		color.a = tweenValue / 255
	end
	_TweenLogic:MakeTween(128, 255, 0.7, EaseType.Linear, tween):Play()
end
end