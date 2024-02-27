return function (self,buttonName) 
if buttonName == "ExitButton" then
	self:CloseUI()
end
local player = _UserService.LocalPlayer
local playerParty = player.PlayerParty
if buttonName == "Create" then
	if playerParty.partyIndex > 0 then
		_MessageLogic:DropMessage("이미 파티가 존재합니다.")
		return
	end
	local stast = player.PlayerStats
	if _GameUtil:IsBeginnerJob(stast.job) and stast.level < 10 then
		_MessageLogic:DropMessage("레벨 10 미만의 초보자는 파티를 만들 수 없습니다.")
		return
	end
	self:SetSelect(0)
	playerParty:CreateParty()
elseif buttonName == "Invite" then
	if playerParty.partyIndex > 0 and playerParty.leaderID ~= player.Name then
		_MessageLogic:DropMessage("파티장이 아니라서 이용할 수 없습니다.")
		return
	end
	self:SetSelect(0)
	self:OpenInviteInfo()
elseif buttonName == "Leader" then
	if playerParty.leaderID ~= player.Name then
		_MessageLogic:DropMessage("파티장이 아니라서 이용할 수 없습니다.")
		return
	end
	if self.select < 1 or self.select > 6 then
		return
	end
	if self.select == playerParty.memberIndex then
		_MessageLogic:DropMessage("자기 자신에게는 할 수 없습니다.")
		return
	end
	playerParty:ChangeLeader(self.select)
	self:SetSelect(0)
elseif buttonName == "Expel" then
	if playerParty.leaderID ~= player.Name then
		_MessageLogic:DropMessage("파티장이 아니라서 이용할 수 없습니다.")
		return
	end
	if self.select < 1 or self.select > 6 then
		return
	end
	if self.select == playerParty.memberIndex then
		_MessageLogic:DropMessage("자기 자신에게는 할 수 없습니다.")
		return
	end
	playerParty:ExpelMember(self.select)
	self:SetSelect(0)
elseif buttonName == "Leave" then
	if playerParty.partyIndex == 0 then
		_MessageLogic:ChatMessage(5, "파티가 존재하지 않습니다.")
		return
	end
	self:SetSelect(0)
	playerParty:LeaveParty(false)
end
end