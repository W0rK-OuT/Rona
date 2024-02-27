return function (self) 
-- 복구
--if self.main.GroupAlpha > 0 then
--    _TimerService:ClearTimer(self._T.timerIn)
--    _TimerService:ClearTimer(self._T.timerOut)
--    local func = function()
--        self.main.GroupAlpha -= self.speed * 2
--        if self.main.GroupAlpha <= 0 then
--            self.main.GroupAlpha = 0
--            _TimerService:ClearTimer(self._T.timerIn)
--        end
--    end
--    self._T.timerIn = _TimerService:SetTimerRepeat(func, 0.01, 0)
--end
end