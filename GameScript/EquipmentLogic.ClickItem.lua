return function (self,slot) 
if not _UserService.LocalPlayer.PlayerStats:IsActing() then
	self.lastClick = ""
	return
end
if _TradeManager.main.Enable then
	self.lastClick = ""
	return
end
if _ScrollManager.main.Enable then
	_ScrollManager:SetSlot(true, slot, false)
	return
end

local inv = _UserService.LocalPlayer.PlayerInventory.inv0
if inv[slot] == nil then
	return
end
local ori = self.lastClick
self.lastClick = slot
--if ori ~= slot then
--    return
--end
local now = _UtilLogic.ElapsedSeconds
if ori ~= slot or self.clickDelay < now then
	self.clickDelay = now + 0.45
	_SoundService:PlaySound("39ac0badc6c8413ea957d7771a14ec80", 1)
	return
end
_UserService.LocalPlayer.PlayerInventory:UnEquipItem(slot)
_SoundService:PlaySound("6639fea1624646a3ab028544274647ff", 1)
end