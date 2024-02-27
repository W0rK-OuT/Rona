return function (self,mp,maxMp) 
local percent = 1 - math.min(1, mp / maxMp)

---@type Tweener
local twwen = self._T.mpTimer
if twwen ~= nil and twwen.IsPlaying then
	twwen:Destroy()
end

local oriPercent = self.mpPercent.RectSize.x / self.maskSize
local func = function(per)
	self.mpPercent.RectSize.x = self.maskSize * per
end

local tween = _TweenLogic:MakeTween(oriPercent, percent, 0.5, EaseType.Linear, func)
self._T.mpTimer = tween
tween:Play()

_TimerService:ClearTimer(self._T.mpBlack)
local color = self.mpTest.SpriteGUIRendererComponent.Color
color.a = 0

if oriPercent < percent and percent > 0.5 then
	local count = 1
	local testFunc = function()
		if count % 2 == 1 then
			color.a = self.aplpha
		else
			color.a = 0
		end
		count += 1
		if count >= 6 then
			_TimerService:ClearTimer(self._T.mpBlack)
			color.a = 0
		end
	end
	self._T.mpBlack = _TimerService:SetTimerRepeat(testFunc, 0.1, 0.1)
end

self.mpText.Text = "<color=#99cc33>[</color>" .. mp .. "／" .. maxMp .."<color=#99cc33>]</color>"
end