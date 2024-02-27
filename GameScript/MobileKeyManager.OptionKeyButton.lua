return function (self,name) 
local item = self.keys["" .. self.clickIndex]
if item == nil then
	_MessageLogic:DropMessage("선택한 버튼이 존재하지 않습니다. 다시 클릭하세요.")
	return
end
if name == "On" then
	local value = item["6"]
	item["6"] = value == "0" and "1" or "0"
elseif name == "Remove" then
	self.keys["" .. self.clickIndex] = nil
	self.clickIndex = 0
end
self:UpdateMobileImage()
self:UpdateOptionText()
self.changed = true
end