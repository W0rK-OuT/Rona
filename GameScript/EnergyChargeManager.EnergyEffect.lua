return function (self,player,on) 
if not isvalid(player) then
	return
end

local isMine = player == _UserService.LocalPlayer
if isMine then
	if on then
		_SoundService:PlaySound("5c4072e9e2614e08bec1abd6d1c634b9", 1)
		self.effect:SetEnable(true)
	else
		self.effect:SetEnable(false)
	end
end

self:ClearTimer()

if on then
	_EffectService:PlayEffectAttached("2c040b65d13e47a590e40c72bdc729e3", player, Vector3.zero, 0, Vector3.one)
	local func = function()
		self._T.effNum = _EffectService:PlayEffectAttached("bcccdd0cf6fc44df903ca03efb4a6c42", player, Vector3.zero, 0, Vector3.one, true)
	end
	self._T.effTimer = _TimerService:SetTimerOnce(func, 1.35)
end
end