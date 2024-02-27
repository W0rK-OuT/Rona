return function (self) 
self.main:SetEnable(true)
_UIManager:Add(self.main)

local back = self.main:GetChildByName("Back")
back.SpriteGUIRendererComponent.ImageRUID = ""
back.SpriteGUIRendererComponent.ImageRUID = "c22c77cd7663436bae115b5f605dcf9d"

_SoundService:PlaySound("65d65a35260b45cd85b122300273754e", 1)
local grid = self.main:GetChildByName("Grid")
grid:SetEnable(false)
local exit = self.main:GetChildByName("ExitButton")
exit:SetEnable(false)

_TimerService:ClearTimer(self._T.timer)
local func = function()
	grid:SetEnable(true)
	exit:SetEnable(true)
end
self._T.timer = _TimerService:SetTimerOnce(func, 0.9 / back.SpriteGUIRendererComponent.PlayRate)

--local color = grid.SpriteGUIRendererComponent.Color
--local tweenFunc = function(tweenValue)
--    color.a = tweenValue
--end
--_TweenLogic:PlayTween(0, 1, 0.9, EaseType.BackEaseIn, tweenFunc)
end