return function (self,enteredMap) 
if self:IsServer() then
	if enteredMap.SoundComponent ~= nil then
		log(enteredMap.Name .. " SoundComponent not nil")
	end
	if enteredMap.MapInfo == nil then
		if enteredMap.Name ~= _MapData:StartMapName() then
			enteredMap:AddComponent(MapInfo)
		end
		log(enteredMap.Name .. " MapInfo nil")
	end
	
	local mapInfo = enteredMap.MapInfo
	if mapInfo == nil then
		return
	end
	
	if mapInfo.bgm == nil then
		_SoundService:StopBGM(true, self.Entity)
		self.sound = ""
	else
		if self.sound ~= mapInfo.bgm then
			_SoundService:PlayBGM(mapInfo.bgm, 1, self.Entity.Name)
			self.sound = mapInfo.bgm
		end
	end
	local lastMap
	if mapInfo.forcedReturn ~= 999999999 then
		lastMap = mapInfo.forcedReturn
	else
		lastMap = mapInfo.id
	end
	if lastMap > 0 then
		self.Entity.PlayerStats.mapid = lastMap
	end
	
	self.Entity.PlayerEventStat.state = mapInfo.fieldType == 140
	
	mapInfo:EnterPlayer()
	self.Entity.PlayerNpcTalk:Dispose()
	
	self.lastMapEnter = _UtilLogic.ServerElapsedSeconds
else
	if self.Entity ~= _UserService.LocalPlayer then
		return
	end
	_CoolTime.idleTime = 0
	_TamingInfoManager.simulator = _CollisionService:GetSimulator(enteredMap)

	local info = enteredMap.MapInfo
	if info ~= nil then
		local isDark = info.fieldType == 9
		local mapID = info.link ~= 0 and info.link or info.id
		if isDark or info.hideMinimap then
			mapID = -1
		end
		_CameraManager:UpdateDark(isDark)
		_MiniMapManager:UpdateMiniMap(mapID)
	end
	_PlayerWeather:UpdateMapEnter()
	_MonsterDropManager:CheckUpdate()
	_BossHpManager:CloseHp()
	
	local func = function()
		self.Entity.RigidbodyComponent.Enable = true
		self.Entity.TriggerComponent.Enable = true
	end
	_TimerService:SetTimerOnce(func, 0.2)
	
	local mapInfo = enteredMap.MapInfo
	if mapInfo ~= nil then
		_ScreenManager:UpdateScreen(mapInfo.id)
	end
end
end