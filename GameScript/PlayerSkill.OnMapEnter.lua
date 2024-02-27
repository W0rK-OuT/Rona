return function (self,enteredMap) 
_EffectService:RemoveEffect(self._T.berserkSerial)
if self.berserkState then
	self._T.berserkSerial = _EffectService:PlayEffectAttached("560f9d24e3414175a3cdd74c8a271d0d", self.Entity, Vector3.zero, 0, Vector3.one, true)
end
end