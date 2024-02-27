return function (self,key,value) 
if value == nil then
	return
end

local item = self.keys["" .. self.clickIndex]
if item == nil then
	_MessageLogic:DropMessage("선택한 버튼이 존재하지 않습니다. 다시 클릭하세요.")
	return
end

if key == "PosX" then
	if value < 0 then
		value = 0
	elseif value > self.rectSizeX - 120 then
		value = self.rectSizeX - 120
	end
	item["2"] = -value
	self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Horizontal, 1 - (value / (self.rectSizeX - 120)))
elseif key == "PosY" then
	if value < 0 then
		value = 0
	elseif value > self.rectSize - 120 then
		value = self.rectSize - 120
	end
	item["3"] = value
	self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1 - (value / (self.rectSize - 120)))
elseif key == "SizeX" then
	if value < 80 then
		value = 80
	elseif value > 500 then
		value = 500
	end
	item["4"] = value
elseif key == "SizeY" then
	if value < 80 then
		value = 80
	elseif value > 500 then
		value = 500
	end
	item["5"] = value
end

self:UpdateMobileImage()
self:UpdateOptionText()
self.changed = true
end