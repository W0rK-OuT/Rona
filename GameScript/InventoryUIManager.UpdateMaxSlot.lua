return function (self,tab,slot,update) 
local inven = _UserService.LocalPlayer.PlayerInventory
if tab == 1 then
	inven.ms1 = slot
elseif tab == 2 then
	inven.ms2 = slot
elseif tab == 3 then
	inven.ms3 = slot
elseif tab == 4 then
	inven.ms4 = slot
elseif tab == 5 then
	inven.ms5 = slot
end
if self.tab == tab and update then
	self:UpdateSlot(slot)
end
end