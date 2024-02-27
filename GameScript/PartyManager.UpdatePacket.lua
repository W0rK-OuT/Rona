return function (self,partyInfo) 
local player = _UserService.LocalPlayer
local playerParty = player.PlayerParty
local memIndex = 0

local memCount = 0
if partyInfo == nil then
	playerParty.leaderID = ""
	for k, v in pairs(self.grid.Children) do
		v:SetEnable(false)
	end
else
	local leaderID = partyInfo["leader"]
	playerParty.leaderID = partyInfo["leader"]
	local partyMembers = partyInfo["party"]
	for k, v in pairs(self.grid.Children) do
		local member = partyMembers[tonumber(v.Name)]
		if member == nil then
			v:SetEnable(false)
		else
			if member["id"] == player.Name then
				memIndex = k
			end
			if member["id"] == leaderID then
				v:GetChildByName("Leader"):SetEnable(true)
			else
				v:GetChildByName("Leader"):SetEnable(false)
			end
			v:GetChildByName("Name").TextComponent.Text = member["name"]
			v:GetChildByName("Job").TextComponent.Text = member["job"]
			v:GetChildByName("Level").TextComponent.Text = tostring(member["level"])
			v:SetEnable(true)
			memCount += 1
		end
	end
end
self.cPartyInfo = partyInfo
self.memCount = memCount
playerParty.memberIndex = memIndex
end