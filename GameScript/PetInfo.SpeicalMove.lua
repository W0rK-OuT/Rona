return function (self) 
if self.bug then
	return
end
self.bug = true

local option = _UserService.LocalPlayer.PlayerSetting.petOption
if _SkillStart:ConvertValue(option["Sound"], 1) == 1 then
	local sound2 = _SkillStart:ConvertValue(option["Sound2"], 1)
	if sound2 == 1 then
		_SoundService:PlaySound("5aacfda92ef246ec93ab46c59dfb53e3", 1)
	elseif sound2 == 2 then
		_SoundService:PlaySound("f3a37095237047a3969c5825c848e546", 1)
	elseif sound2 == 3 then
		_SoundService:PlaySound("96a8703bb0614fe096df010cec3ffb79", 1)
	elseif sound2 == 4 then
		_SoundService:PlaySound("58b4cefadf694f3eb896af2847fdd328", 1)
	end
end

local isPlay = _SkillStart:ConvertValue(option["Effect"], 1) == 1
local oriBox = self.Entity.TriggerComponent.BoxSize:Clone()
local func = function()
	if isPlay then
		self.Entity.SpriteParticleComponent:Play()
	end
	self.Entity.TriggerComponent.BoxSize.x = 6
	self.Entity.TriggerComponent.BoxSize.y = 5
	wait(10)
	self.Entity.TriggerComponent.BoxSize.x = oriBox.x
	self.Entity.TriggerComponent.BoxSize.y = oriBox.y
	self.Entity.SpriteParticleComponent:Stop()
	self.bug = false
end
_TimerService:SetTimerOnce(func, 0)
end