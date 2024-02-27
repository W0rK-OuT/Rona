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

local ori = self.invIndex
self.invIndex = slot

local grid = self.invGrid

local oriChild = grid:GetChildByName(tostring(ori))
if oriChild ~= nil then
	oriChild:GetChildByName("SpriteA"):SetEnable(false)
end

local newChild = grid:GetChildByName(tostring(slot))
if newChild ~= nil then
	newChild:GetChildByName("SpriteA"):SetEnable(true)
end

if ori ~= slot then
	self.invDelay = 0
end

if slot ~= 0 then
	self:ShopItemClick(0)
	
	if self.invDelay < _UtilLogic.ServerElapsedSeconds then
		self.invDelay = _UtilLogic.ServerElapsedSeconds + 0.35
		return
	end
	self.invDelay = 0
	
	if self.invSlot == 2 then
		local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(self.invSlot)
		if inv == nil then
			return
		end
		
		local find = self.invGrid:GetChildByName(tostring(self.invIndex))
		if find == nil then
			return
		end
		local findSlot = find:GetChildByName("slot").TextComponent.Text
		if _UtilLogic:IsNilorEmptyString(findSlot) then
			return
		end
	
		local item = inv[findSlot]
		if item == nil then
			return
		end
		local id = item["id"]
		if self:IsRecharge(id) then
			_MessageLogic:DropMessage("충전이 가능한 아이템은 더블클릭으로 판매가 불가능합니다. 아이템 팔기 버튼을 눌러주세요.")
			return
		end
	end

	self:OpenSell()
end
end