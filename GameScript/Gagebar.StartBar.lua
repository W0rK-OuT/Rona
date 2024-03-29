return function (self,id) 
self.main:SetEnable(true)
self:SetLayer(_UserService.LocalPlayer.AvatarRendererComponent.SortingLayer)
self.bar.TransformComponent.Scale.x = 1

local effect = self:GetRUID(id, "effect")
local sound = self:GetRUID(id, "sound")

self.chargeEffectEntity.ChargeEffect:ChangeRUID(effect, id)

if not _UtilLogic:IsNilorEmptyString(sound) then
	self:SetSound(sound)
end

if self._T.timer ~= nil and self._T.timer.IsPlaying then
	self._T.timer:Destroy()
end
local tween = _TweenLogic:ScaleTo(self.bar, Vector2(self.maxValue, 1), 1, EaseType.Linear)
self._T.timer = tween
end