return function (self,sound,effect,isLeft) 
_SoundService:PlaySound(sound, 1)
self:EffectAndSoundServer(_UserService.LocalPlayer, effect, isLeft)

end