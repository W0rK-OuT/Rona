return function (self,animation,index,summonInfo) 
self:SyncRemoveSummon(false, index)

local summonFrame = _GameUtil:ConvertValue(summonInfo["summonFrame"], 0)
local id = summonInfo["id"]
local pos = _UserService.LocalPlayer.TransformComponent.WorldPosition

local ruid = _SummonData:GetRUID(id, "summon")
if not _UtilLogic:IsNilorEmptyString(ruid) then
	_EffectService:PlayEffect(ruid, _UserService.LocalPlayer, pos, 0, Vector3.one)
end

local summon = _SpawnService:SpawnByModelId("model://bbfb435a-1e5b-4636-b44b-d0da7a090b1c", "summon", pos, _UserService.LocalPlayer.CurrentMap)
if animation then
	summon:SetEnable(false)
end

local si = summon.SummonInfo
si.index = index
si.id = id
si.type = summonInfo["type"]
si.attackTick = _GameUtil:ConvertValue(summonInfo["tickCount"], 0)
si:Setting()

if animation then
	local func = function()
		summon:SetEnable(true)
	end
	_TimerService:SetTimerOnce(func, _SummonData:GetFrame(id, "summon"))
end

self.summons[index] = summon
end