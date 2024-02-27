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
local alpha = self.alphas[FrameIndex]
local scale = self.scales[FrameIndex]
if alpha ~= nil then
	local a0 = _GameUtil:ConvertValue(alpha["a0"], -1)
	local a1 = _GameUtil:ConvertValue(alpha["a1"], -1)
	local delay = _GameUtil:ConvertValue(alpha["delay"], 100) / self.Entity.SpriteRendererComponent.PlayRate
	
	local color = self.Entity.SpriteRendererComponent.Color
	if a0 > -1 then
	    color.a = a0 / 255
	end
	if a1 > - 1 then
	    local func = function(tweenValue)
	        color.a = tweenValue
	    end
	    _TweenLogic:MakeTween(color.a, a1 / 255, delay / 1000, EaseType.Linear, func):Play()
	end
end
if scale ~= nil then
	local z0 = _GameUtil:ConvertValue(scale["z0"], -1)
	local z1 = _GameUtil:ConvertValue(scale["z1"], -1)
	local delay = _GameUtil:ConvertValue(scale["delay"], 100) / self.Entity.SpriteRendererComponent.PlayRate
	
	local tScale = self.Entity.TransformComponent.Scale
	if z0 > -1 then
		tScale.x = z0 / 100
		tScale.y = z0 / 100
	end
	if z1 > -1 then
		_TweenLogic:ScaleTo(self.Entity, Vector2(z1 / 100, z1 / 100), delay / 1000, EaseType.Linear)
	end
end
end