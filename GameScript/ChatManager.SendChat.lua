return function (self,text) 
if _UtilLogic:IsNilorEmptyString(text) then
	return
end

local mm = string.sub(text, 1, 1)
if mm == "!" then
	if _GameUtil:IsGameMaster(_UserService.LocalPlayer) then
		local mm2 = _UtilLogic:SubString(text, 2, 1)
		if mm2 ~= "!" then
			_GMCommandLogic:Command(_UserService.LocalPlayer, string.sub(text, 2))
			return
		end
	end
elseif mm == "@" then
	if _GameUtil:IsGameMaster2(_UserService.LocalPlayer) then
		local mm2 = _UtilLogic:SubString(text, 2, 1)
		if _TextManager:IsHan(mm2) then
			_GMCommandLogic:Command2(_UserService.LocalPlayer, string.sub(text, 2))
			return
		end
	end
elseif mm == "/" then
	local mm2 = _UtilLogic:SubString(text, 2, 1)
	if _TextManager:IsHan(mm2) then
		_UserCommandManager:Command(string.sub(text, 2))
		return
	end
end

local emotionalType = nil
if _UtilLogic:Contains(text, "ㅋㅋ") or _UtilLogic:Contains(text, "ㅎㅎ") or _UtilLogic:Contains(text, "키키") or _UtilLogic:Contains(text, "히히") or _UtilLogic:Contains(text, "하하") then
	emotionalType = EmotionalType.Smile
elseif _UtilLogic:Contains(text, "ㅜㅜ") or _UtilLogic:Contains(text, "ㅠㅠ") or _UtilLogic:Contains(text, "흑흑") then
	emotionalType = EmotionalType.Cry
elseif _UtilLogic:Contains(text, "ㅡㅡ") then
	emotionalType = EmotionalType.Troubled
elseif _UtilLogic:Contains(text, ";;") then
	emotionalType = EmotionalType.Bewildered
elseif _UtilLogic:Contains(text, "곤란") then
	emotionalType = EmotionalType.Stunned
elseif _UtilLogic:Contains(text, "뽀뽀") then
	emotionalType = EmotionalType.Chu
end
if emotionalType ~= nil then
	emotionalType = tostring(emotionalType)
end

if self.chatType <= 1 then
	_UserService.LocalPlayer.ChatBalloonComponent.Message = text
	_TimerService:ClearTimer(self._T.chatTimer)
	
	local timer = function()
		_UserService.LocalPlayer.ChatBalloonComponent.Message = ""
	end
	self._T.chatTimer = _TimerService:SetTimerOnce(timer, 5)
end

if self.chatType == 2 then
	local partyIndex = _UserService.LocalPlayer.PlayerParty.partyIndex
	if partyIndex <= 0 or _PartyManager.memCount <= 1 then
		_MessageLogic:ChatMessage(5, "가입하신 파티가 존재하지 않거나 파티원이 없습니다.")
		return
	end
end

self:ChatToServer(_UserService.LocalPlayer, text, self.chatType, emotionalType)
end