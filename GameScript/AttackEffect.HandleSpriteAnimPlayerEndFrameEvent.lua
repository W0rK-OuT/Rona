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
local ReversePlaying = event.ReversePlaying
local TotalFrameCount = event.TotalFrameCount
local AnimPlayer = event.AnimPlayer
---------------------------------------------------------
local color = self.Entity.SpriteRendererComponent.Color
local func = function(tweenValue)
	color.a = tweenValue
end
_TweenLogic:MakeTween(1, 0, 0.2, EaseType.Linear, func):Play()
self.Entity:Destroy(0.2)
end