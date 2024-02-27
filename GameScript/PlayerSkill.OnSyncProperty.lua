return function (self,name,value) 
if name == "energyState" then
	_EnergyChargeManager:EnergyEffect(self.Entity, value)
elseif name == "berserkState" then
	_EffectService:RemoveEffect(self._T.berserkSerial)
	if value then
		self._T.berserkSerial = _EffectService:PlayEffectAttached("560f9d24e3414175a3cdd74c8a271d0d", self.Entity, Vector3.zero, 0, Vector3.one, true)
	end
end

--if self.Entity ~= _UserService.LocalPlayer then
--    return
--end
end