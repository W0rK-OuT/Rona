return function (self) 
local entity = _UIManager:FindEntity(self.entityName)
if entity == nil then
	self:OpenUI()
else
	self:CloseUI()
end
end