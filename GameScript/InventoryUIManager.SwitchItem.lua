return function (self,slot1,slot2) 
if slot1 == slot2 then
	if self.clickDelay > _UtilLogic.ElapsedSeconds then
		self:DoubleClickItem(slot1)
	end
	return
end
if self.lastTab == self.tab then
	if slot1 == self.lastSlot then
		self.lastSlot = slot2
	elseif slot2 == self.lastSlot then
		self.lastSlot = slot1
	end
end
self:Highlight()
_UserService.LocalPlayer.PlayerInventory:ChangeSlot(self.tab, tonumber(slot1), tonumber(slot2))
end