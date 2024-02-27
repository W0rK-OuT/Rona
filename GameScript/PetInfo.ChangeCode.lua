return function (self,code) 
self.code = code
self.motions = _PetManager.pets[code]
if self.motions == nil then
	self.motions = _PetManager.pets[0]
	self.code = 0
end
if self.Entity.SpriteParticleComponent then
	self.Entity.SpriteParticleComponent.SpriteRUID = self.motions["eff"]
end
self:ForceChangeMotion("stand1")
end