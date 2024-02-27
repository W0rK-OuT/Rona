return function (self,buttonName) 
if buttonName == "Ok" then
	if self.tradeState then
		_TradeYesNoManager:OpenUI()
	end
elseif buttonName == "Exit" then
	self:CloseUI(true)
elseif buttonName == "MesoIcon" then
	if _UtilLogic:IsNilorEmptyString(self.partnerID) then
		return
	end
	_TradeMesoManager:OpenUI()
end
end