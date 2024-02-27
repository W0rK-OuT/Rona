return function (self) 
if self.portalDelay then
	return
end
if not self.Entity.RigidbodyComponent:IsOnGround() then
	return
end
if not _UserService.LocalPlayer.PlayerStats:IsActing() then
	return
end

if _CoolTime.portalDelay < 0 then
	return
end

---@type CollisionSimulator
local simul = _SkillBegin.simulator

local playerPos = _PlayerComponent.trans.Position:ToVector2()
local tri = _UserService.LocalPlayer.TriggerComponent

local mysticBox = simul:OverlapBoxAll("mystic", playerPos + tri.ColliderOffset, tri.BoxSize, 0)

for _, value in pairs(mysticBox) do
	local mysticInfo = value.Entity.MysticInfo
	if mysticInfo ~= nil then
		if mysticInfo.owner == _UserService.LocalPlayer.Name then
			_PortalManager:PortalSound()
			_MysticDoorManager:UseMysticDoor(_UserService.LocalPlayer, mysticInfo.owner, value.Entity)
			return
		end
		if _PartyManager.cPartyInfo ~= nil then
			local partyMembers = _PartyManager.cPartyInfo["party"]
			if partyMembers ~= nil then
				for k, v in pairs(partyMembers) do
					if mysticInfo.owner == v["id"] then
						_PortalManager:PortalSound()
						_MysticDoorManager:UseMysticDoor(_UserService.LocalPlayer, mysticInfo.owner, value.Entity)
						return
					end
				end
			end
		end
	end
end

local box = simul:OverlapBoxAll("portal", playerPos + tri.ColliderOffset, tri.BoxSize, 0)

local findPortals = {}
for _, value in pairs(box) do
	local info = value.Entity.PortalInfo
	if info ~= nil and info:UpkeyPortal() then
		table.insert(findPortals, value.Entity)
	end
end

if #findPortals == 0 then
	return
end

table.sort(findPortals, function(a, b)
	return playerPos:Distance(a.TransformComponent.Position:ToVector2()) < playerPos:Distance(b.TransformComponent.Position:ToVector2()) end)

local portal = findPortals[1]
_CoolTime.portalDelay = -0.5

---@type PortalInfo
local portalInfo = portal.PortalInfo

local portalType = portalInfo.pt
local tm = portalInfo.tm
if portalType == 1 or portalType == 10 then
	if tm == -1 or "map" .. tm == self.Entity.CurrentMapName then
		_UserService.LocalPlayer.PlayerMulti:PlayEffectAttached("6119c3c7a9c34d65bce6d8d01e4e9ceb", Vector3.zero, 0, Vector3.one, 1)
	end
end
local names = portalInfo.pn .. " / pt " .. portalInfo.pt .. " / tn " .. portalInfo.tn .. " / tm " .. portalInfo.tm
if not _UtilLogic:IsNilorEmptyString(portalInfo.script) then
	names ..= " / script " .. portalInfo.script
end
if _GameUtil:IsGameMaster(self.Entity) then
	_MessageLogic:ChatMessage(5, names)
end

self.portalDelay = true
_ItemInfoLogic:CloseUI()
if portalType == 7 or portalType == 8 or portalType == 11 then
	self:PortalScript(portal)
elseif self:CheckMovePortal(portalType) then
	if tm ~= 999999999 then
		_PortalManager:PortalSound()
		if tm ~= -1 and "map" .. tm ~= self.Entity.CurrentMapName then
			_FadeManager:FadeOut()
		end
		self:PortalMove(portal)
	end
end
self.portalDelay = false
end