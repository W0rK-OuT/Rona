return function (self,id) 
local checkType = self:CheckLimit(_UserService.LocalPlayer.CurrentMap.MapInfo.id)
if checkType > 0 then
	_MessageLogic:DropMessage(self:LimitMsg(checkType))
	self.main:SetEnable(false)
	_UIManager:Remove(self.main)
	return
end
self:CloseYesNo()
self:CloseCharList()
self:SetLastClick(0)
self.main:SetEnable(true)
_UIManager:Add(self.main)
end