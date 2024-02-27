return function (self,type,msg) 
---@type Color
local nColor = self:GetColor(type)

local clone = self.topSample:Clone("msg")
local textCom = clone.TextComponent
textCom.Text = msg

local fontColor = textCom.FontColor
local outColor = textCom.OutlineColor
fontColor.r = nColor.r
fontColor.g = nColor.g
fontColor.b = nColor.b

local cal = function()
	local tweenAlpha = function(tweenValue)
		fontColor.a = tweenValue
		outColor.a = tweenValue / 2
	end
	_TweenLogic:MakeTween(1, 0, 1, EaseType.Linear, tweenAlpha):Play()
	clone:Destroy(2)
end
_TimerService:SetTimerOnce(cal, 3)
end