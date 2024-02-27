return function (self,infoType,infoTable) 
if not self.main.Enable then
	self:OpenUI()
end
if infoType == 0 then -- 입장
	self:UpdatePartnerName(infoTable["name"], infoTable["id"])
	self:UpdatePartnerCharacter(infoTable["cos"], infoTable["id"])
	self:UpdatePartnerMeso(0)
	self:UpdateTradeButton(true)
elseif infoType == 1 then -- 내 아이템 업데이트
	self:UpdateMeso(infoTable["meso"])
	self:UpdateItem(infoTable["items"])
elseif infoType == 2 then -- 상대방 아이템 업데이트
	self:UpdateMeso(infoTable["meso"])
	self:UpdateItem(infoTable["items"])
end
end