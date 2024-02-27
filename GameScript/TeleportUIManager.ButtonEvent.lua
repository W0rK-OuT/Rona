return function (self,buttonName) 
local player = _UserService.LocalPlayer
if buttonName == "ExitButton" then
	self:CloseUI()
elseif buttonName == "MoveChar" then
	self:GetCharList()
elseif buttonName == "MapAdd" then
	local mapID = player.CurrentMap.MapInfo.id
	local checkType = self:CheckLimit(mapID)
	if checkType > 0 then
		_MessageLogic:DropMessage(self:LimitMsg(checkType))
		return
	end
	local check = false
	for idx = 1, self.maxValue do
		local nMapID = tonumber(player.PlayerStats.mapList["" .. idx])
		if nMapID ~= nil and nMapID == mapID then
			_MessageLogic:DropMessage("이미 등록한 지역입니다.")
			return
		end
		if nMapID == nil then
			check = true
		end 
	end
	if not check then
		_MessageLogic:DropMessage("순간이동 리스트가 모두 찼습니다.\n기존의 것을 삭제한 후 다시 시도해주세요.")
		return
	end
	self:AddMap(_UserService.LocalPlayer)
elseif buttonName == "MapRemove" then
	if self.selectIndex < 1 or self.selectIndex > self.maxValue then
		_MessageLogic:DropMessage("아무것도 선택하지 않았습니다.")
		return
	end
	local index = self.selectIndex
	local mapID = tonumber(player.PlayerStats.mapList["" .. index])
	
	self:SetLastClick(0)
	if mapID == nil then
		_MessageLogic:DropMessage("존재하지 않는 리스트입니다.")
		return
	end
	self:RemoveMap(player, index)
elseif buttonName == "Move" then
	if self.selectIndex < 1 or self.selectIndex > self.maxValue then
		_MessageLogic:DropMessage("아무것도 선택하지 않았습니다.")
		return
	end
	local index = self.selectIndex
	local moveMapID = tonumber(player.PlayerStats.mapList["" .. index])
	self:SetLastClick(0)
	if moveMapID == nil then
		_MessageLogic:DropMessage("존재하지 않는 리스트입니다.")
		return
	end
	local mapID = player.CurrentMap.MapInfo.id
	if moveMapID == mapID then
		_MessageLogic:DropMessage("현재 위치하고 있는 지역입니다.")
		return
	end
	if self:CheckLimit(mapID) > 0 then
		_MessageLogic:DropMessage("이동이 불가능한 장소에 있습니다.")
		return
	end
	if self:CheckLimit(moveMapID) > 0 then
		_MessageLogic:DropMessage("해당 맵은 이동이 불가능한 장소입니다.")
		return
	end
	local itemCount = player.PlayerInventory:ItemQuantity(5041000) + player.PlayerInventory:ItemQuantity(5041001)
	if itemCount == 0 then
		_MessageLogic:DropMessage("아이템이 없습니다.")
		return
	end
	self:CloseUI()
	self:MoveMap(player, index)
end
end