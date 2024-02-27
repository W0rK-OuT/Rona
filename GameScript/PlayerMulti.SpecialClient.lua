return function (self,skillID,actionName,playRate) 
local player = self.Entity
local isTaming = player.PlayerBuff.incTaming > 0
if isTaming then
	_TamingManager:UpdateMotion(player, actionName)
end
if player == _UserService.LocalPlayer then
	return
end

local isLeft = player.PlayerControllerComponent.LookDirectionX < 0
local body = player.AvatarRendererComponent:GetBodyEntity()
local root = player.AvatarRendererComponent:GetAvatarRootEntity()
local rootTrans = root.TransformComponent
local actionTable = _MotionDelayManager.motionAction[actionName]

local isHide = false
if skillID == 4221007 then
	isHide = true
	root:SetVisible(false)
end

local pDelay = 0
for key, value in pairs(actionTable) do
	local attackActionName = value["action"]
	local attackDelay = value["delay"]
	local attackFrame = value["frame"]
	local moveX = value["moveX"]
	local moveY = value["moveY"]
	local rotate = value["rotate"]
	local oriDelay = _MotionDelayManager.motionPriDelay[attackActionName .. "_" .. attackFrame]
	local calRate = oriDelay * playRate / attackDelay
	local motionDelay = function()
		local event = ActionStateChangedEvent(attackActionName, attackActionName, calRate, SpriteAnimClipPlayType.Onetime, attackFrame, attackFrame)
		body:SendEvent(event)
		if isLeft then
			rootTrans.Position.x = moveX / 100
			rootTrans.Position.y = -moveY / 100
			rootTrans.ZRotation = -rotate
		else
			rootTrans.Position.x = -moveX / 100
			rootTrans.Position.y = -moveY / 100
			rootTrans.ZRotation = rotate
		end
		player.PlayerMotion.attState = attackActionName
	end
	local timeValue = _TimerService:SetTimerOnce(motionDelay, pDelay / 1000)
	pDelay = pDelay + attackDelay / playRate
end
local endTimer = function()
	if rootTrans.Position.x ~= 0 then
		rootTrans.Position.x = 0
	end
	if rootTrans.Position.y ~= 0 then
		rootTrans.Position.y = 0
	end
	if rootTrans.ZRotation ~= 0 then
		rootTrans.ZRotation = 0
	end
	player.PlayerMotion.attState = ""
	if isHide then
		root:SetVisible(true)
	end
end
_TimerService:SetTimerOnce(endTimer, pDelay / 1000)
end