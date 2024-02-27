return function (self,update) 
if update then
	self:CloseTrade(_UserService.LocalPlayer, self.partnerID)
end

self:UpdatePartnerName("", "")
self:UpdatePartnerCharacter(nil, nil)
self:UpdatePartnerItem(nil)
self:UpdateItem(nil)
self:UpdatePartnerMeso(-1)
self:UpdateMeso(0)
self:UpdateTradeButton(false)
self:UpdateDone(true, false)
self:UpdateDone(false, false)
self:ClearText()
_TradeCountManager:CloseUI()
_TradeYesNoManager:CloseUI()

self.main:SetEnable(false)
_UIManager:Remove(self.main)
end