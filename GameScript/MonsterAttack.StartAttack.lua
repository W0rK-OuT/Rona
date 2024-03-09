return function (self,targetPlayer,monster,attackName,isLeft,infos) 
--type 0 피할 수 있음
--type 1 발동하면 피할 수 없음
--type 2 볼
--type 3 에어리어 어택

if not isvalid(monster) then
	return
end
if not isvalid(targetPlayer) then
	return
end

local mobInfo = monster.MobInfo
if not mobInfo:IsAlive() then
	return
end

local link = mobInfo.link
local idType = math.floor(link / 1000000)
local attackInfos = _MonsterAttackData:GetTable(idType)[link]
if attackInfos == nil then
	return
end

if attackName == "ATTACK" then
	attackName ..= "1"
end

local soundRUID = _MosterSound:GetSound(mobInfo.id)[attackName]
if not _UtilLogic:IsNilorEmptyString(soundRUID) then
	_SoundService:PlaySound(soundRUID, 1)
end
local attackInfo = attackInfos[attackName]
if attackInfo == nil then
	return
end

local effectAfter = _GameUtil:ConvertValue(attackInfo["effectAfter"], 0)
local attackAfter = _GameUtil:ConvertValue(attackInfo["attackAfter"], 0)
local range = attackInfo["range"]
local type = attackInfo["type"]

local effects = {"effect", "effect0"}
for _, effStr in pairs(effects) do
	local effect = attackInfo[effStr]
	if effect ~= nil then
		local effType = _GameUtil:ConvertValue(effect["effectType"], 0)
		local effFunc = function()
			if not isvalid(monster) then
				return
			end
			if effType == 0 then
				_EffectService:PlayEffectAttached(effect, monster, Vector3.zero, 0, Vector3.one)
			elseif effType == 1 then
				local effectDistance = _GameUtil:ConvertValue(effect["effectDistance"], 100)
				local isRandomPos = _GameUtil:ConvertValue(effect["randomPos"], 0) > 0
				local delay = _GameUtil:ConvertValue(effect["delay"], 0)
				---@type Vector2
				local lt = effect["lt"]
				---@type Vector2
				local rb = effect["rb"]
				
				local mobPos = monster.TransformComponent.WorldPosition
				local startPos = mobPos.x + lt.x / 100
				local endPos = mobPos.x + rb.x / 100
				local topPos = mobPos.y - lt.y / 100
				local botPos = mobPos.y - rb.y / 100
				
				if isRandomPos then
					startPos += math.random(1, effectDistance) / 100
				end
				
				local ruids = {}
				for k, v in pairs(effect) do
					local check = tonumber(k)
					if check ~= nil then
						if not _UtilLogic:IsNilorEmptyString(v) then
							table.insert(ruids, v)
						end
					end
				end
				
				local len = #ruids
				if len > 0 then
					local mapfh = _UserService.LocalPlayer.CurrentMap.FootholdComponent
					local effFunc = function()
						while true do
							local footList = mapfh:RaycastAll(Vector2(startPos, topPos), Vector2.down, topPos - botPos)
							for _, v in pairs(footList) do
								local y = v:GetYByX(startPos)
								_EffectService:PlayEffect(ruids[math.random(1, len)], _UserService.LocalPlayer, Vector3(startPos, y, 0), 0, Vector3.one)
							end
							startPos += effectDistance / 100
							if startPos >= endPos then
								break
							end
						end
					end
					_TimerService:SetTimerOnce(effFunc, delay / 1000)
				end
			elseif effType == 2 then
				local mobPos = monster.TransformComponent.WorldPosition
				local map = monster.CurrentMap
				
				local count = _GameUtil:ConvertValue(effect["count"], 0)
				local baseDelay = _GameUtil:ConvertValue(effect["delay"], 0)
				local duration = _GameUtil:ConvertValue(effect["duration"], 0)
				local fall = _GameUtil:ConvertValue(effect["fall"], 0)
				local interval = _GameUtil:ConvertValue(effect["interval"], 100)
				
				---@type Vector2
				local lt = effect["lt"]
				---@type Vector2
				local rb = effect["rb"]
				local x = _GameUtil:ConvertValue(effect["x"], 100)
				local y = _GameUtil:ConvertValue(effect["y"], 100)
				
				local ruids = {}
				local size = 0
				
				for idx = 1, 10 do
					local ruid = effect[tostring(idx)]
					if ruid == nil then
						break
					end
					size = idx
					table.insert(ruids, ruid)
				end
				
				local startX = 0
				local startY = 0
				local xRand0 = lt.x
				local xRand1 = rb.x
				local yRand0 = -rb.y
				local yRand1 = -lt.y
				
				local func = function()
					local timer = 0
					while timer < duration do
						for idx = 1, count do
							local spawn = _SpawnService:SpawnByModelId("model://31629ffc-110b-4b30-9e18-d3790dc69ed1", "fall",
								 Vector3(mobPos.x + (x + math.random(xRand0, xRand1)) / 100, mobPos.y + (y + math.random(yRand0, yRand1)) / 100, 0), map)
							spawn.TransformComponent.Scale.x = isLeft and 1 or -1
							
							local nTime = math.random(0, math.abs(y)) + fall
							if size > 0 then
								local one = math.random(1, size)
								spawn.SpriteRendererComponent.SpriteRUID = ruids[one]
							end
							
							if x ~= 0 or y ~= 0 then
								_TweenLogic:MoveOffset(spawn, Vector2((isLeft and -1 or 1) * x / 100, -y / 100), nTime / 1000, EaseType.Linear)
							end
							spawn:Destroy(nTime / 1000)
						end
						timer += interval
						wait(interval / 1000)
					end
				end
				_TimerService:SetTimerOnce(func, baseDelay / 1000)
			end
		end
		
		_TimerService:SetTimerOnce(effFunc, effectAfter / 1000)
	end
end

if type == 0 then
	---@type Vector2
	local lt = range["lt"]
	---@type Vector2
	local rb = range["rb"]
	local rangeX = -lt.x + rb.x
	local rangeY = -lt.y + rb.y + 20
	local isJumpAttack = _GameUtil:ConvertValue(attackInfo["jumpAttack"], 0) > 0
	
	local func = function()
		if not isvalid(monster) then
			return
		end
		---@type CollisionSimulator
		local simul = _RaidManager.simulator
		local nPos = monster.TransformComponent.WorldPosition:ToVector2() + Vector2((isLeft and 1 or -1) * (lt.x + rb.x) / 2 * 0.01, (-lt.y + rb.y) / 2 * 0.01)
		local nBox = Vector2(rangeX / 100, rangeY / 100)
		local box = simul:OverlapBoxAll("player", nPos, nBox, 0)
		for k, v in pairs(box) do
			if v.Entity == _UserService.LocalPlayer then
				if isJumpAttack and not _PlayerComponent.rigid:IsOnGround() then
					break
				end
				_PlayerHitByMonster:MonsterAttack(monster, attackName)
				break
			end
		end
		_RaidManager:RangeUI(nPos, nBox, nil)
	end
	_TimerService:SetTimerOnce(func, attackAfter / 1000)
elseif type == 1 then
	local func = function()
		if not isvalid(monster) then
			return
		end
		_PlayerHitByMonster:MonsterAttack(monster, attackName)
	end
	_TimerService:SetTimerOnce(func, attackAfter / 1000)
elseif type == 2 then
	local playerPos = targetPlayer.TransformComponent.WorldPosition
	---@type Vector2
	local sp = range["sp"]
	local r = range["r"]
	
	local nX = (isLeft and 1 or -1) * sp.x / 100 + monster.TransformComponent.WorldPosition.x
	local nY = -sp.y / 100 + monster.TransformComponent.WorldPosition.y
	
	local ruid = attackInfo["ball"]
	local speed = _GameUtil:ConvertValue(attackInfo["bulletSpeed"], 200)
	
	local func = function()
		if not isvalid(monster) then
			return
		end
		local ball = _SpawnService:SpawnByModelId("model://0e7aaa67-ed82-4d12-b8b0-70bac2f79949", "ball", Vector3(nX, nY, 0), monster.CurrentMap)
		ball.SpriteRendererComponent.SpriteRUID = ruid
		local monsterBall = ball.MonsterBall
		
		local ddd = math.atan(playerPos.y + 0.3 - nY, playerPos.x - nX) * 180 / math.pi
		if isLeft then
			ball.TransformComponent:Rotate(ddd - 180)
		else
			ball.TransformComponent:Rotate(ddd)
			ball.TransformComponent.Scale.x = -1
		end
		
		local dirVec = Vector2.Normalize(Vector2(playerPos.x - nX, playerPos.y - nY + 0.3))
		monsterBall.attackName = attackName
		monsterBall.dirX = dirVec.x
		monsterBall.dirY = dirVec.y
		monsterBall.speed = speed * 2 -- 2배인듯
		
		monsterBall:CalcRemove(r, monster)
	end
	_TimerService:SetTimerOnce(func, attackAfter / 1000)
else
	local areaWarning = attackInfo["areaWarning"]
	---@type Vector2
	local lt = range["lt"]
	---@type Vector2
	local rb = range["rb"]
	local start = range["start"]
	local rangeX = (rb.x - lt.x) / 100
	local rangeY = (rb.y - lt.y + 20) / 100
	
	local mapCom = _UserService.LocalPlayer.CurrentMap.FootholdComponent	
	local sp = start * rangeX + monster.TransformComponent.WorldPosition.x
	local y = monster.TransformComponent.WorldPosition.y
	
	local effFunc = function()
		if not isvalid(monster) then
			return
		end
		for k, v in pairs(infos) do
			if v == 1 then
				local nPosX = sp + rangeX * (k - 1)
				local fh = mapCom:Raycast(Vector2(nPosX, y + 0.6), Vector2.down, 1.2)
				local nPosY
				if fh ~= nil then
					nPosY = fh:GetYByX(nPosX)
				else
					nPosY = y
				end
				_EffectService:PlayEffect(areaWarning, monster, Vector3(nPosX, nPosY, 0), 0, Vector3.one)
			end
		end
	end
	_TimerService:SetTimerOnce(effFunc, effectAfter / 1000)
	
	local func = function()
		if not isvalid(monster) then
			return
		end
		---@type CollisionSimulator
		local simul = _RaidManager.simulator
		for k, v in pairs(infos) do
			if v == 1 then
				local nPosX = sp + rangeX * (k - 1)
				local fh = mapCom:Raycast(Vector2(nPosX, y + 0.6), Vector2.down, 1.2)
				local nPosY
				if fh ~= nil then
					nPosY = fh:GetYByX(nPosX)
				else
					nPosY = y
				end
				
				local nPos = Vector2(nPosX, nPosY + rangeY / 2)
				local nBox = Vector2(rangeX, rangeY)
				local box = simul:OverlapBoxAll("player", nPos, nBox, 0)
				for k, v in pairs(box) do
					if v.Entity == _UserService.LocalPlayer then
						_PlayerHitByMonster:MonsterAttack(monster, attackName)
						break
					end
				end
				_RaidManager:RangeUI(nPos, nBox, nil)
			end
		end
	end
	_TimerService:SetTimerOnce(func, attackAfter / 1000)
end

end