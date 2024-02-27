return function (self) 
if self:UpkeyPortal() then
	self.Entity.TriggerComponent.ColliderOffset = Vector2(0, 0.3)
	self.Entity.TriggerComponent.BoxSize = Vector2(0.4, 0.7)
    --if not _UtilLogic:IsNilorEmptyString(self.tn) then
    --    self.Entity.TriggerComponent.Enable = true
    --end
elseif self.pt == 3 or self.pt == 9 then
	self.Entity.TriggerComponent.ColliderOffset = Vector2(0, 0.4)
	self.Entity.TriggerComponent.BoxSize = Vector2(1, 0.7)
	self.Entity.TriggerComponent.Enable = true
end

if self.pt == 10 or self.pt == 11 then
	local hidden = _SpawnService:SpawnByModelId("model://65714669-6a3f-45c5-8a7a-cb44a96fc144", "히든", Vector3.zero, self.Entity)
	if self.pt == 11 then
		hidden.HiddenPortal.startRUID = "0042dbb7ea6d4771b139bfd3ec1e9826"
		hidden.HiddenPortal.stateRUID = "3f6ed5df998146d78ae8c52b895fc9ee"
		hidden.HiddenPortal.endRUID = "3021d0c7cfd54322aef0d17dbd15abb1"
	else
		hidden.HiddenPortal.startRUID = "60ba3a272b8547a991f54024bfedbe87"
		hidden.HiddenPortal.stateRUID = "70d44405e4da49a290b2f6692985f9e0"
		hidden.HiddenPortal.endRUID = "0b8facb350614902aeeafe9fdb8b110f"
	end
	hidden.TriggerComponent.Enable = true
	hidden:SetVisible(false)
end
end