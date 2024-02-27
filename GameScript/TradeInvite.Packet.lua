return function (self,otherPlayer) 
if otherPlayer == nil then
	_MessageLogic:DropMessage("현재 맵에서 플레이어 정보를 찾을 수 없습니다.")
	return
end
local infoTable = {}
infoTable["name"] = otherPlayer.PlayerComponent.Nickname
infoTable["id"] = otherPlayer.Name
local cos = {}
for k, v in pairs(otherPlayer.CostumeManagerComponent.EquippedItems) do
	table.insert(cos, {v.Category, v.ItemId})
end
infoTable["cos"] = cos
_TradeManager:UpdateTradeInfo(0, infoTable)
end