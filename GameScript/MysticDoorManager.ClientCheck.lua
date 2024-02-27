return function (self) 
local player = _UserService.LocalPlayer
local mapInfo = player.CurrentMap.MapInfo

if _FieldLimit:Check(mapInfo.fieldLimit, _FieldLimit.MysticDoor) then
	return false
end
if mapInfo.id == mapInfo.returnMap then
	return false
end

---@type CollisionSimulator
local simul = _Tr0de2Manager.simulator

local playerPos = _PlayerComponent.trans.Position:ToVector2()
local tri = _UserService.LocalPlayer.TriggerComponent

local mysticBox = simul:OverlapBoxAll("mystic", playerPos + Vector2(0, 0.2), Vector2(1.2, 0.4), 0)

for _, value in pairs(mysticBox) do
	local mysticInfo = value.Entity.MysticInfo
	if mysticInfo ~= nil then
		_MessageLogic:ChatMessage(5, "포탈 가까이에서는 미스틱 도어 스킬을 사용하실 수 없습니다.")
		return false
	end
end

local box = simul:OverlapBoxAll("portal", playerPos + Vector2(0, 0.2), Vector2(1.2, 0.4), 0)

local findPortals = {}
for _, value in pairs(box) do
	local info = value.Entity.PortalInfo
	if info ~= nil and info:UpkeyPortal() then
		_MessageLogic:ChatMessage(5, "포탈 가까이에서는 미스틱 도어 스킬을 사용하실 수 없습니다.")
		return false
	end
end

return true
end