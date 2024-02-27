return function (self) 
-- ======================================================
-- 대미지를 받습니다.
-- ======================================================

-- ------------------------------------------------------
-- 피격 이펙트를 재생합니다.
-- ------------------------------------------------------
--_AnimService:HitAnim(_UserService.LocalPlayer, _GameLogic.DamageDuration)


local resetFunction = function() self.Damaged = false end
--_TimerService:SetTimerOnce(resetFunction, _GameLogic.DamageDuration)

local resetControlFunction = function()
	_UserService.LocalPlayer.PlayerControllerComponent.Enable = true
end
_TimerService:SetTimerOnce(resetControlFunction, 0.2)
end