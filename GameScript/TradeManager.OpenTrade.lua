return function (self,pInfo,partnerID) 
if pInfo == nil then
	self:OpenUI()
else
	_TradeInvite:InviteTrade(pInfo)
end
end