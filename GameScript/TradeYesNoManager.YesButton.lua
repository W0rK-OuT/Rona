return function (self) 
self:CloseUI()
_TradeManager:UpdateTradeButton(false)
_UserService.LocalPlayer.PlayerTrade:DoneTrade()
end