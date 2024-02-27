return function (self,value) 
local player = self.Entity
local body = player.AvatarRendererComponent:GetBodyEntity()
if not isvalid(body) then
	return
end

local isLeft = player.PlayerControllerComponent.LookDirectionX < 0
local sp = self.partner
if sp == nil then
	sp = _SpawnService:SpawnByModelId("model://96a5e9ed-1950-453a-8ceb-2a8998e3dfa1", "shadowpartner",  Vector3(isLeft and 0.4 or -0.4, 0, 1), player)
	self.partner = sp
end
if value > 0 then
	self.on = true
	sp:SetEnable(true)
	sp.SpriteRendererComponent.FlipX = not isLeft
	sp.ShadowInfo:UpdateMotion("alert", 1)
	
	self.handler = body:ConnectEvent("SpriteAnimPlayerChangeFrameEvent", self.ChangeFrameEvent)
else
	self.on = false
	sp.ShadowInfo:UpdateMotion("dead", 1)
	
	local func = function()
		sp:SetEnable(false)
	end
	_TimerService:SetTimerOnce(func, 0.44)

	body:DisconnectEvent("SpriteAnimPlayerChangeFrameEvent", self.handler) 
end
end