return function (self,slot) 
if slot == nil then
	return
end
if self.buyClone.Enable then
	return
end
if self.sellClone.Enable then
	return
end

local ori = self.shopIndex
self.shopIndex = slot

local grid = self.clone:GetChildByName("LeftBotton")

local oriChild = grid:GetChildByName(tostring(ori))
if oriChild ~= nil then
	oriChild:GetChildByName("SpriteA").SpriteGUIRendererComponent.Color = Color(187 / 255, 204 / 255, 221 / 255)
end

local newChild = grid:GetChildByName(tostring(slot))
if newChild ~= nil then
	newChild:GetChildByName("SpriteA").SpriteGUIRendererComponent.Color = Color(238 / 255, 153 / 255, 34 / 255)
end

if ori ~= slot then
	self.shopDelay = 0
end

if slot ~= 0 then
	self:InvItemClick(0)
	
	if self.shopDelay < _UtilLogic.ServerElapsedSeconds then
		self.shopDelay = _UtilLogic.ServerElapsedSeconds + 0.35
		return
	end
	self.shopDelay = 0
	
	self:OpenBuy()
end
end