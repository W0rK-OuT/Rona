return function (self) 
_SoundService:PlaySound("8f9f8f7ed3124701a214c5653722ced3", 1)
self.clone:SetEnable(false)
_UIManager:Remove(self.clone)

self.clickSkill = 0
self.clickDelay = 0
_DragBackManager:SameClose("skill")

_SkillInfoLogic:CloseUI()
end