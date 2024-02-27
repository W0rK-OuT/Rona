return function (self,hp,maxHp) 
local percent = 1 - math.min(hp / maxHp)

---@type Tweener
local twwen = self._T.hpTimer
if twwen ~= nil and twwen.IsPlaying then
	twwen:Destroy()
end

local oriPercent = self.hpPercent.RectSize.x / self.maskSize
local func = function(per)
	self.hpPercent.RectSize.x = self.maskSize * per
end

local tween = _TweenLogic:MakeTween(oriPercent, percent, 0.5, EaseType.Linear, func)
self._T.hpTimer = tween
tween:Play()

_TimerService:ClearTimer(self._T.hpBlack)
local color = self.hpTest.SpriteGUIRendererComponent.Color
color.a = 0

if oriPercent < percent and percent > 0.5 then
	local count = 1
	local testFunc = function()
		if count % 2 == 1 then
			color.a = self.aplpha
		else
			color.a = 0
		end
		self.hpTest:SetVisible(count % 2 == 1)
		count += 1
		if count >= 6 then
			_TimerService:ClearTimer(self._T.hpBlack)
			color.a = 0
		end
	end
	self._T.hpBlack = _TimerService:SetTimerRepeat(testFunc, 0.1, 0.1)
end

self.hpText.Text = "<color=#99cc33>[</color>" .. hp .. "／" .. maxHp .."<color=#99cc33>]</color>"
end