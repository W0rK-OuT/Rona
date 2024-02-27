return function (self,message) 
local chr = _UserService.LocalPlayer

local msgTable = _UtilLogic:Split(message, " ")
local mmm = msgTable[1]
if mmm == nil then
	return
end
if mmm == "교환" then
	local findName = msgTable[2]
	_TradeManager:StartTrade(findName)
elseif mmm == "전직" then
	local stat = chr.PlayerStats
	local job = stat.job
	local level = stat.level
	local findJob = msgTable[2]
	if findJob ~= nil then
		for k, v in pairs(self.jobTable) do
			local changeJob = v[1]
			local reqJob = v[2]
			local reqLevel = v[3]
			local chaJobName = v[4]
			
			if chaJobName == findJob then
				if level < reqLevel then
					_MessageLogic:DropMessage("레벨 조건을 만족하지 못했습니다.")
					return
				end
				if job ~= reqJob then
					_MessageLogic:DropMessage("직업 조건을 만족하지 못했습니다.")
					return
				end
				self:Job(_UserService.LocalPlayer, findJob)
				return
			end
		end
	end
	local nStr = "전직 가능한 목록"
	for k, v in pairs(self.jobTable) do
		nStr ..= "\n" .. v[4] .. " (레벨 " .. v[3] .. " 이상)"
	end
	_MessageLogic:DropMessage(nStr)
elseif mmm == "펫확률" then
	_RandomBoxManager:UpdateUI(_RandItemData:GetPetScoll(), 1, 2)
elseif mmm == "뱃지확률" then
	_RandomBoxManager:UpdateUI(_RandItemData:GetBadgeScoll(), 1, 2)
elseif mmm == "랜덤주문서확률" then
	_RandomBoxManager:UpdateUI(_RandItemData:GetCurseScrollTable(), 1, 2)
elseif mmm == "주문서확률" then
	_RandomBoxManager:DropRand()
elseif mmm == "채팅지우기" then
	_ChatManager:RestMessage()
elseif mmm == "채팅크기" then
	_ChatManager:SetSize(tonumber(msgTable[2]))
elseif mmm == "채팅위치" then
	_ChatManager:SetPos(tonumber(msgTable[2]))
elseif mmm == "채팅길이" then
	_ChatManager:SetLength(tonumber(msgTable[2]))
elseif mmm == "충전포인트표시" then
	self:Option(_UserService.LocalPlayer, "tp", 0)
elseif mmm == "시간표시" then
	self:Option(_UserService.LocalPlayer, "time", 0)
elseif mmm == "카메라" then
	self:Option(_UserService.LocalPlayer, "camera", 0)
elseif mmm == "조이스틱x" then
	self:SetJoy("x", tonumber(msgTable[2]))
elseif mmm == "조이스틱y" then
	self:SetJoy("y", tonumber(msgTable[2]))
elseif mmm == "명령어" then
	_MessageLogic:BigDropMessage(
		"/펫확률"
		.. "\n/뱃지확률"
		.. "\n/주문서확률"
		.. "\n/전직 <전직명>"
		.. "\n/교환 <닉네임>"
		.. "\n/채팅지우기"
		.. "\n/채팅크기 <1~20> : 기본 5"
		.. "\n/채팅위치 <1~20> : 기본 1"
		.. "\n/채팅길이 <1~20> : 기본 20"
		.. "\n/충전포인트표시 : 캐시샵 충전 포인트 on/off"
		.. "\n/시간표시 : 우측 하단 시간 on/off"
		.. "\n/카메라 : 카메라 설정 변경"
		.. "\n/조이스틱x <0~3000> : x축 조정 (기본 210)"
		.. "\n/조이스틱y <0~3000> : y축 조정 (기본 130)"
	, 600)
else
	_MessageLogic:ChatMessage(5, "존재하지 않는 명령어입니다. '/명령어'를 입력하세요.")
end
end