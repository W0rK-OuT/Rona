return function (self,popType) 
if _UtilLogic:IsNilorEmptyString(self.userID) then
	_MessageLogic:DropMessage("유저 정보가 없습니다.")
	return
end
if _UserService.LocalPlayer.Name == self.userID then
	_MessageLogic:DropMessage("자기 자신의 인기도를 내리거나 올릴 수 없습니다.")
	return
end
local value
if popType == "up" then
	value = 1
elseif popType == "down" then
	value = -1
else
	_MessageLogic:DropMessage("인기도 값에 오류가 생겼습니다.")
	return
end
if _UserService.LocalPlayer.PlayerStats.level < 15 then
	_MessageLogic:DropMessage("레벨 15 부터 가능합니다.")
	return
end

local time = DateTime.UtcNow
local now = time.Year .. time.Month .. time.Day
local key = _UserService.LocalPlayer.PlayerStats.saveKeyValue["pop"]
if key == nil or key ~= now then
	local findUser = _UserService:GetUserEntityByUserId(self.userID)
	if findUser == nil then
		_MessageLogic:DropMessage("같은 맵에서만 인기도를 올리거나 내릴 수 있습니다.")
		return
	end
	self:GainPop(_UserService.LocalPlayer, value, self.userID)
else
	_MessageLogic:DropMessage("오늘은 이미 기능을 사용하였습니다.")
	return
end
end