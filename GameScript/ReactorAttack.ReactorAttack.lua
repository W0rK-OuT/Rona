return function (self,reacotrs) 
local isLeft = _PlayerComponent.move:IsFaceLeft()

for _, v in pairs(reacotrs) do
	---@type Entity
	local reactor = v.Entity
	
	local reactorInfo = reactor.ReactorInfo
	if reactorInfo == nil then
		continue
	end
	if not reactorInfo:IsActing() then
		continue
	end
	if reactorInfo.isHit then
		continue
	end
	
	local events = reactorInfo:GetEvent()
	if events == nil then
		continue
	end
	
	for _, event in pairs(events) do
		local type = _GameUtil:ConvertValue(event["type"], -1)
		if type >= 0 and type <= 3 then
			local check = type == 0
			if type == 2 and not isLeft then
				check = true
			end
			if type == 3 and isLeft then
				check = true
			end
			if check then
				_ReactorManager:HitReactor(_UserService.LocalPlayer, reactor, reactorInfo.state)
				return true
			end
		end
	end
end

return false
end