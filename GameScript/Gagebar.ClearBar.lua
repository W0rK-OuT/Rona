return function (self) 
self.main:SetEnable(false)
_EffectService:RemoveEffect(self._T.effectTimer)
if self._T.timer ~= nil and self._T.timer.IsPlaying then
	self._T.timer:Destroy()
end
self.bar.TransformComponent.Scale.x = 0

self:SetSound(nil)
end