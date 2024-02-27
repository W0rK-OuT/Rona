return function (self,slot) 
if _TradeManager.main.Enable then
	_TradeManager:AddItem(self.tab, slot)
	self:SetLastClick("")
	return
end
if _StorageManager.main.Enable then
	local now = _UtilLogic.ElapsedSeconds
	if _StorageManager.invLastSlot ~= slot then
		_StorageManager.invLastClick = now + 0.3
		_StorageManager.invLastSlot = slot
		return
	end
	if _StorageManager.invLastClick < now then
		_StorageManager.invLastClick = now + 0.3
		return
	end
	_StorageManager:PushItem(self.tab, slot)
	self:SetLastClick("")
	return
end
if _CreateItemManager.main.Enable then
	_CreateItemManager:Set(self.tab, slot)
	return
end
if not _UserService.LocalPlayer.PlayerStats:IsActing() then
	self:SetLastClick("")
	return
end

if _ScrollManager.main.Enable then
	if self.tab == 2 then
		_ScrollManager:SetSlot(false, slot, false)
	end
	self:SetLastClick("")
	return
end

local ori = self.lastClick
if _UtilLogic:IsNilorEmptyString(ori) then
	local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(self.tab)
	if inv[slot] == nil then
		return
	end
end
if _UtilLogic:IsNilorEmptyString(ori) then
	self.clickDelay = _UtilLogic.ElapsedSeconds + 0.45
end

self:SetLastClick(slot)

if not _UtilLogic:IsNilorEmptyString(ori) then
	self:SwitchItem(ori, slot)
	self:SetLastClick("")
	_SoundService:PlaySound("6639fea1624646a3ab028544274647ff", 1)
else
	_SoundService:PlaySound("39ac0badc6c8413ea957d7771a14ec80", 1)
end
end