return function (self,player,isPet) 
--if not self.canPickup then
--	return false
--end

if not isvalid(self.Entity) then
	return false
end

if isPet and self.isNoPet then
	return false
end

if not self.isAnyone then
	if self.playerID ~= player.Name then
		return false
	end
end

if self.pickup then
	return false
end

if self:IsClient() then
	if _TradeManager.main.Enable then
		return false
	end
end

if not player.PlayerStats:IsActing() then
	return false
end

if self.questID > 0 then
	if player.PlayerQuest:QuestStatus(self.questID) ~= 1 then
		return false
	end
end

if self.id > 0 then
	if not player.PlayerInventory:CanHold(self.id, self.quantity) then
		if self:IsClient() then
			local now = _UtilLogic.ElapsedSeconds
			if _MessageLogic.msgTime < now then
				_MessageLogic:ShowMessage("아이템을 더이상 가질 수 없습니다")
				_MessageLogic.msgTime = now + 1
			end
		end
		return false
	end
end

return true
end