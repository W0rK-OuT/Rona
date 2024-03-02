return function (self,skillID,actionName,weaponSpeed,masteryEff,lastTick) 
if actionName == nil then
	return
end

local oriDelay = _MotionDelayManager.motionActionTotalDelay[actionName]
if oriDelay == nil then
	self:NormalAction(actionName, weaponSpeed, masteryEff, lastTick)
	return
end

_TimerService:ClearTimer(self._T.endTimer)

local delay = math.ceil(oriDelay * (math.max(2, weaponSpeed) + 10) / 16 / 30) * 30
local playRate = oriDelay / delay 

local actionTable = _MotionDelayManager.motionAction[actionName]

local isTaming = _UserService.LocalPlayer.PlayerBuff.incTaming > 0
local isHide = false
if skillID == 4221007 then
	isHide = true
	self.root:SetVisible(false)
	
	local cal = lastTick + delay / 1000
	if _PlayerHitByMonster.nextHitTime < cal then -- 무적 시간
		_PlayerHitByMonster.nextHitTime = cal
	end
end

if not isHide and not self.root.Visible then
	self.root:SetVisible(true)
end

_PlayerComponent:SetState(false, false)
_PlayerComponent.controller.Enable = false
self.nextAttackDelay = lastTick + delay / 1000

if actionName == "meteor" or actionName == "blizzard"  or actionName == "genesis" then
	_SkillMove.teleTime = lastTick + delay / 1000
end

self:SpecialServer(_UserService.LocalPlayer, skillID, actionName, playRate) -- 멀티
local rootTrans = self.root.TransformComponent
local isLeft = _PlayerComponent.move:IsFaceLeft()

local pDelay = 0
for key, value in pairs(actionTable) do
	local attackActionName = value["action"]
	local attackDelay = value["delay"]
	local attackFrame = value["frame"]
	local moveX = value["moveX"]
	local moveY = value["moveY"]
	local rotate = value["rotate"]
	local oneDelay = _MotionDelayManager.motionPriDelay[attackActionName .. "_" .. attackFrame]
	local calRate = oneDelay * playRate / attackDelay
	local motionDelay = function()
		if _UserService.LocalPlayer.PlayerStats:IsActing() and not isTaming then
			local event = ActionStateChangedEvent(attackActionName, attackActionName, calRate, SpriteAnimClipPlayType.Onetime, attackFrame, attackFrame)
			self.body:SendEvent(event)
            if isLeft then
                rootTrans.Position.x = moveX / 100
                rootTrans.Position.y = -moveY / 100
                rootTrans.ZRotation = -rotate
            else
                rootTrans.Position.x = -moveX / 100
                rootTrans.Position.y = -moveY / 100
                rootTrans.ZRotation = rotate
            end
			_UserService.LocalPlayer.PlayerMotion.attState = attackActionName
		end
	end
	_TimerService:SetTimerOnce(motionDelay, pDelay / 1000)
	pDelay = pDelay + attackDelay / playRate
	
    --log("기본 " .. oriDelay .. " / 변형 " .. attackDelay .. " / 누적 " .. pDelay .. " / " .. attackActionName .. "_" .. attackFrame .. " / 속도 " .. calRate)
end
local motionDelay = function()
	if not isTaming then
		if rootTrans.Position.x ~= 0 then
			rootTrans.Position.x = 0
		end
		if rootTrans.Position.y ~= 0 then
			rootTrans.Position.y = 0
		end
		if rootTrans.ZRotation ~= 0 then
			rootTrans.ZRotation = 0
		end
		_UserService.LocalPlayer.PlayerMotion.attState = ""
	end
	if not _RapidSkill.rapid then
		_PlayerComponent:SetState(false, true)
		_PlayerComponent.controller.Enable = true
	end
	if isHide then
		self.root:SetVisible(true)
	end
end
self._T.endTimer = _TimerService:SetTimerOnce(motionDelay, delay / 1000)
end