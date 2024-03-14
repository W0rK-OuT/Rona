return function (self,player,code) 
local isPlayer = player == _UserService.LocalPlayer
local isLeft = player.PlayerControllerComponent.LookDirectionX < 0

local taming = player:GetChildByName("taming")
if taming == nil then
	taming = _SpawnService:SpawnByModelId("model://8d770eb9-45f9-4434-b90e-de7490e4e65f", "taming", Vector3(0, 0, -1), player)
end
local ori = taming.TamingInfo.id
if ori == 1932000 and code == 0 then
	if isPlayer then
		_SoundService:PlaySound("4cae7563193a41ffbee86200ced23888", 1)
		_BattleShipManager:UpdateTaming(true)
	end
	_EffectService:PlayEffectAttached("52ea05d56ce442928b24d4013043dff1", player, Vector3.zero, 0, Vector3(isLeft and 1 or -1, 1, 1))
end
if ori ~= 1932000 and code == 1932000 then
	if isPlayer then
		_BattleShipManager:UpdateTaming(false)
	end
end
taming.TamingInfo.id = code

if code <= 0 then
	if isPlayer then
		_PlayerComponent:SetState(true, true)
		if player.StateComponent.CurrentStateName == "TAMING" then
			player.StateComponent:ChangeState("IDLE")
		end
	end
	taming:SetEnable(false)
	
	local body = player.AvatarRendererComponent:GetAvatarRootEntity()
	if body ~= nil then
		local pos = body.TransformComponent.Position
		pos.x = 0
		pos.y = 0
	end
else
	if isPlayer then
		player.StateComponent:ChangeState("TAMING")
		_PlayerComponent:SetState(true, false)
	end
    --local event = BodyActionStateChangeEvent("")
    --event.ActionState = MapleAvatarBodyActionState.Sit
    --event.needResetAction = true
    --event.startFrameIndex = 1
    --event.endFrameIndex = 2
    --self.Entity:SendEvent(event)
    --
    --local event = ActionStateChangedEvent("sit", "sit", 1, SpriteAnimClipPlayType.Loop, 1, 1)
    --body:SendEvent(event)
	
	local av = player.AvatarRendererComponent
	taming:SetEnable(true)
	taming.TamingInfo:UpdateSort(av.SortingLayer)
	taming.TamingInfo:UpdateOrder(av.OrderInLayer)
	taming.TamingInfo:UpdateLookAt(isLeft)
	taming.TamingInfo:UpdateRUID("stand")
end

if isPlayer then
	_StatUILogic:UpdateSpeed()
	_StatUILogic:UpdateJump()
end
end