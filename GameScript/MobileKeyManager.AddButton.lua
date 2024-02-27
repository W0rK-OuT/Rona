return function (self) 
local keys = self.keys
local check = false
local nextIndex = 0
for idx = 1, self.maxCount do
	if keys["" .. idx] == nil then
		check = true
		nextIndex = idx
		break
	end
end

if nextIndex == 1 then
	keys = self:DefaltSetting()
elseif not check then
	_MessageLogic:DropMessage("버튼은 최대 " .. self.maxCount .. "개입니다.")
	return
end

keys["" .. nextIndex] = {["1"] = "", ["2"] = 0, ["3"] = self.Parent.UITransformComponent.RectSize.y - 220, ["4"] = 200, ["5"] = 200, ["6"] = 0}
self.clickIndex = nextIndex
self.keys = keys

self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Vertical, 0)
self.Parent.Parent.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Horizontal, 1)
self:UpdateMobileImage()
self:UpdateOptionText()
self.changed = true
end