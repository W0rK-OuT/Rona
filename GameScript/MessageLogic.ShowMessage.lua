return function (self,msg) 
--self.count += 1
--if self.count > 5 then
--    local find = self.show.Parent:GetChildByName("msg")
--    if find ~= nil then
--        find:Destroy()
--        self.count -= 1
--    end
--end
local clone = self.show:Clone("msg")
local textCom = clone.TextComponent
textCom.Text = msg
local cal = function()
	local color = textCom.FontColor
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