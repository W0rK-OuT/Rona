return function (self,slot) 
if self.rechargeClone.Enable then
	return
end

self.rechargeSlot = slot
self.rechargeClone:SetEnable(true)
if _UtilLogic:IsNilorEmptyString(slot) then
	self.rechargeClone:GetChildByName("Text").TextComponent.Text = "정말로 일괄 충전하시겠습니까?"
else
	self.rechargeClone:GetChildByName("Text").TextComponent.Text = "정말로 충전하시겠습니까?"
end
_UIManager:Add(self.rechargeClone)
end