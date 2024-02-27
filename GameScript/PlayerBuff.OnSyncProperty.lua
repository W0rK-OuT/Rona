return function (self,name,value) 
if name == "combo" then
	_PlayerBuffLogic:UpdateCombo(self.Entity, value)
elseif name == "darkSight" then
	_PlayerBuffLogic:UpdateDarkSight(self.Entity, value)
elseif name == "incShadow" then
	_ShadowPartnerManager:UpdateValue(self.Entity, value)
elseif name == "incMorph" then
	_PlayerBuffLogic:UpdateMorph(self.Entity, value)
elseif name == "buffValue" then
	self:UpdateBuffBox(name, value)
elseif name == "incTaming" then
	_TamingManager:UpdateTaming(self.Entity, value)
end

if self.Entity ~= _UserService.LocalPlayer then
	return
end
if name == "pad" then
	_StatUILogic:UpdatePAD()
elseif name == "mad" then
	_StatUILogic:UpdateMAD()
elseif name == "pdd" then
	_StatUILogic:UpdatePDD()
elseif name == "mdd" then
	_StatUILogic:UpdateMDD()
elseif name == "acc" then
	_StatUILogic:UpdateACC()
elseif name == "eva" then
	_StatUILogic:UpdateEVA()
elseif name == "speed" or name == "dashSpeed" then
	_StatUILogic:UpdateSpeed()
elseif name == "jump" or name == "dashJump" then
	_StatUILogic:UpdateJump()
elseif name == "stun" then
	_PlayerWeather:UpdateStun(value)
elseif name == "weakness" then
	_PlayerWeather:UpdateWeakness(value)
elseif name == "slow" then
	_StatUILogic:UpdateSpeed()
end
end