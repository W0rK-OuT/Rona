return function (self,isStart) 
if isStart then
	self.Entity:SetEnable(true)
	self.state = 1
	self.check = false
	self.Entity.TransformComponent.Position.z = -self.ruid1z
	self.Entity.SpriteRendererComponent.SpriteRUID = self.ruid1
	
	if not _UtilLogic:IsNilorEmptyString(self.ruid2zero) then
		--local isLeft = self.Entity.TransformComponent.Scale.x > 0
		self._T.zeroEff = _EffectService:PlayEffectAttached(self.ruid2zero, self.Entity, Vector3.zero, 0, Vector3.one, true)
	end
else
	self.state = 3
	self.check = false
	self.Entity.TransformComponent.Position.z = 0
	self.Entity.SpriteRendererComponent.SpriteRUID = self.ruid3
	
	_EffectService:RemoveEffect(self._T.zeroEff)
end
end