return function (self,type,msg) 
local clone = self.show:Clone("msg")
local textCom = clone.TextComponent
local color = textCom.FontColor

local typeColor = self:GetColor(type)
color.r = typeColor.r
color.g = typeColor.g
color.b = typeColor.b

textCom.Text = msg
local cal = function()
	local outColor = textCom.OutlineColor
	local tweenAlpha = function(tweenValue)
		color.a = tweenValue
		outColor.a = tweenValue / 2
	end
	_TweenLogic:MakeTween(1, 0, 1, EaseType.Linear, tweenAlpha):Play()
	clone:Destroy(2)
end
_TimerService:SetTimerOnce(cal, 3)
end