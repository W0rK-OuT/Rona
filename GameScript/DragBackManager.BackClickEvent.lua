return function (self) 
if self.type == "inv" then
	local tab = tonumber(self.slot)
	if tab == nil then
		return
	end
	local slot = self.subSlot
	if _UtilLogic:IsNilorEmptyString(slot) then
		return
	end
	_DragDropManager:OpenUI(tab, slot)
end
end