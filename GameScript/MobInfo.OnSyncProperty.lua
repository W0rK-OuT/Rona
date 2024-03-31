return function (self,name,value) 
--if name == "noHit" then
--    self.Entity.TriggerComponent.Enable = not value
--else
if name == "obj" then
	_HomingManager:CalcHoming(self.Entity, value)
elseif name == "level" then
	local modelName = self.Entity.Model.Name
	local spl = _UtilLogic:Split(modelName, "_")
	local mobName = spl[2]
	if mobName == "m" then
		mobName = _MonsterData:GetMonsterName(tonumber(spl[1]))
	end
	self.Entity.NameTagComponent.Name = "<size=0.8>Lv." .. self.level .. "</size> " .. mobName
elseif name == "stun" then
	local stun = self.Entity:GetChildByName("stun")
	if stun == nil then
		stun = _SpawnService:SpawnByModelId("model://2e0bb1b2-0567-4932-a3b8-6ccc53eb5194", "stun", Vector3(-self.head.x, self.head.y, 0), self.Entity)
	end
	if value == 0 then
		stun.SpriteRendererComponent.SpriteRUID = "cb92d18ebc71431aa84b155fe77c843d" -- 투명
	else
		stun.SpriteRendererComponent.SpriteRUID = "aff31eceba614575ab4959a4bbb43806"
	end
elseif name == "freeze" or name == "paralyze" or name == "poison" or name == "fire" then
	local nCount = 0
	local r = 0
	local g = 0
	local b = 0
	if self.freeze > 0 then
		r += 120
		g += 120
		b += 220
		nCount += 1
	end
	if self.paralyze then
		r += 120
		g += 60
		b += 220
		nCount += 1
	end
	if self.poison > 0 then
		g += 120
		nCount += 1
	end
	if self.fire > 0 then
		r += 255
		g += 103
		b += 103
		nCount += 1
	end
	local color = self.Entity.SpriteRendererComponent.Color
	if nCount == 0 then
		color.r = 1
		color.g = 1
		color.b = 1
	else
		color.r = r / nCount / 255
		color.g = g / nCount / 255
		color.b = b / nCount / 255
	end	
elseif name == "buffImg" then
	local immRuids = {}
	local keyRuids = {}
	for k, v in pairs(value) do
		local ruid = _MonsterBuffRUID:GetBuff(k, v)
		if not _UtilLogic:IsNilorEmptyString(ruid) then
			if (k >= 140 and k < 150) or k >= 300 then
				immRuids[ruid] = true
			else
				keyRuids[ruid] = true
			end
		end
	end
	local iruids = {}
	for ruid, _ in pairs(immRuids) do
		table.insert(iruids, ruid)
	end
	local ruids = {}
	for ruid, _ in pairs(keyRuids) do
		table.insert(ruids, ruid)
	end
	
	local buffBox = self.Entity:GetChildByName("buffBox1")
	if buffBox == nil then
		buffBox = _SpawnService:SpawnByModelId("model://2e0bb1b2-0567-4932-a3b8-6ccc53eb5194", "buffBox1", Vector3(-self.head.x, self.head.y, 0), self.Entity)
	end
	
	_TimerService:ClearTimer(self._T.ruidTimer)
	local len = #iruids
	if len > 0 then
		if len == 1 then
			buffBox.SpriteRendererComponent.SpriteRUID = iruids[1]
		else
			local index = 0
			local func = function()
				local nIndex = index % len + 1
				buffBox.SpriteRendererComponent.SpriteRUID = iruids[nIndex]
				index += 1
			end
			self._T.ruidTimer = _TimerService:SetTimerRepeat(func, 1, 0)
		end
		buffBox:SetEnable(true)
	else
		buffBox:SetEnable(false)
	end
	
	local buffBox2 = self.Entity:GetChildByName("buffBox2")
	if buffBox2 == nil then
		buffBox2 = _SpawnService:SpawnByModelId("model://2e0bb1b2-0567-4932-a3b8-6ccc53eb5194", "buffBox2", Vector3(-self.head.x, self.head.y, 0), self.Entity)
	end
	
	local len2 = #ruids
	if len2 > 0 then
		for k, v in pairs(ruids) do
			
		end
		buffBox2:SetEnable(true)
	else
		buffBox2:SetEnable(false)
	end
end
end