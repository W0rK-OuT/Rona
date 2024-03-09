return function (self,itemID,bundle) 
local nTab = itemID // 1000000
_MessageLogic:TopMessage(4, _ItemData:ItemName(itemID) .. " " .. bundle .. "번 구매")
self:SwitchTab(nTab)
_SoundService:PlaySound("029a02e537d642f4a8023d096ccf3c9a", 1)
end