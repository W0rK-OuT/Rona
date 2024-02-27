return function (self,delta) 
self.frame += 1
if self.frame < 5 then
	return
end
self.frame = 0

local oneX = (self.fieldX / 2 - self.centerX) / 100
local oneY = (self.fieldY / 2 - self.centerY) / 100

for _, c in pairs(_MiniMapManager.move.Children) do
	---@type Entity
	local child = c
	local trans = child.miniObjType.trans
	if isvalid(trans) then
		local objX = oneX - trans.WorldPosition.x
		local objY = oneY - trans.WorldPosition.y
		
		local miniX = objX * 100 / self.fieldX * self.canvosX
		local miniY = objY * 100 / self.fieldY * self.canvosY
		
		local anchr = child.UITransformComponent.anchoredPosition
		anchr.x = -miniX
		anchr.y = -miniY
	else
		child:Destroy()
	end
end

local playerX = oneX - self.pos.WorldPosition.x
local playerY = oneY - self.pos.WorldPosition.y

local miniX = playerX * 100 / self.fieldX * self.canvosX
local miniY = playerY * 100 / self.fieldY * self.canvosY

self.playerPos.anchoredPosition.x = -miniX
self.playerPos.anchoredPosition.y = -miniY

local xGap = 0
local yGap = 0
if miniX < self.minX then
	xGap = self.minX - miniX
    miniX = self.minX
elseif miniX > self.maxX then
	xGap = miniX - self.maxX
    miniX = self.maxX
end
if miniY < self.minY then
	yGap = self.minY - miniY
    miniY = self.minY
elseif miniY > self.maxY then
	yGap = miniY - self.maxY
    miniY = self.maxY
end

self.minimapPos.anchoredPosition.x = miniX
self.minimapPos.anchoredPosition.y = miniY
end