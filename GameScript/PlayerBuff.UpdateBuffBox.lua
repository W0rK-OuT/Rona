return function (self,buffKey,value) 
local player = self.Entity

local ruids = {}
for value, _ in pairs(_DiseaseManager.effectTable) do
	if self.buffValue & value ~= 0 then
		local ruid = _DiseaseManager.effectTable[value]
		if not _UtilLogic:IsNilorEmptyString(ruid) then
			table.insert(ruids, ruid)
		end
	end
end

local buffBox = player:GetChildByName("buffBox")
if buffBox == nil then
	buffBox = _SpawnService:SpawnByModelId("model://2e0bb1b2-0567-4932-a3b8-6ccc53eb5194", "buffBox", Vector3(0, 0.6, 0), player)
end
_TimerService:ClearTimer(self._T.ruidTimer)
local len = #ruids
if len > 0 then
	if len == 1 then
		buffBox.SpriteRendererComponent.SpriteRUID = ruids[1]
	else
		local index = 0
		local func = function()
			local nIndex = index % len + 1
			buffBox.SpriteRendererComponent.SpriteRUID = ruids[nIndex]
			index += 1
		end
		self._T.ruidTimer = _TimerService:SetTimerRepeat(func, 1, 0)
	end
	buffBox:SetEnable(true)
else
	buffBox:SetEnable(false)
end
end