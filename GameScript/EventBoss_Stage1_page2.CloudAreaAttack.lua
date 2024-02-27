return function (self,startPos,offset) 
_EffectService:PlayEffect("328092851d34404d946999b69e04b879", self.Entity, startPos, 0, Vector3.one)
_SoundService:PlaySound("5b59c860a1944a5b8b67ea0864baf0ab", 0.8)

_EventBossManager:AreaDamage(self.Entity, startPos, offset, 1, 0)
end