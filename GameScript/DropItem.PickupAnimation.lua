return function (self,player) 
if not isvalid(player) then
	return
end
local ani = self.child
if not isvalid(ani) then
	return
end

local tweenLine = ani.TweenLineComponent
tweenLine:Pause()
tweenLine.Enable = false

ani.DropAni.start = false

local duration = 1.2
local time = duration
local magTime = 0.6 -- 투명 타임

---@type Vector2
local startPos
local isUI = ani.SpriteGUIRendererComponent ~= nil
if isUI then
	startPos = ani.UITransformComponent.WorldPosition:ToVector2()-- + Vector2(0, 0.165)
else
	startPos = ani.TransformComponent.WorldPosition:ToVector2()
end

_TimerService:ClearTimer(self._T.aniTimer)
local func = function()
	time -= 0.016
	if time <= 0 or not isvalid(player) or not isvalid(ani) then
		ani:SetEnable(false)
		_TimerService:ClearTimer(self._T.aniTimer)
		return
	end
	
	if time < magTime then
		if isUI then
			ani.SpriteGUIRendererComponent.Color.a = time / magTime
		else
			ani.SpriteRendererComponent.Color.a = time / magTime
		end
	end
	
	local t = (duration - time) / duration
	t = math.sin(t * math.pi * 0.5)
	local yPos = 2 * (1 - t) + 0.3 * t
	if isUI then
		yPos += 0.165
	end
	
	local playerPos = player.TransformComponent.WorldPosition:ToVector2() + Vector2(0, yPos)
	
	--t = t * t * t * (t * (6 * t - 15) + 10)
	local xyz = Vector2.Lerp(startPos, playerPos, t)
	
	if isUI then
		local trans = ani.UITransformComponent
		trans.WorldPosition.x = xyz.x
		trans.WorldPosition.y = xyz.y
	else
		local trans = ani.TransformComponent
		trans.WorldPosition.x = xyz.x
		trans.WorldPosition.y = xyz.y
	end
end
self._T.aniTimer = _TimerService:SetTimerRepeat(func, 0.016, 0)
end