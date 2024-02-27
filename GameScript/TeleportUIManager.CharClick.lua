return function (self,name) 
local num = tonumber(name)
self:CloseCharList()

if num == nil then
	return
end

local target = self.players[num]
if target == nil then
	return
end

local targetMap = target[1]
self.select = num
self:OpenYesNo("'" .. targetMap .. "'님이 있는 곳으로 이동하시겠습니까?\n상대방이 이동할 경우 다른 맵으로 갈 수도 있습니다.", 1)
end