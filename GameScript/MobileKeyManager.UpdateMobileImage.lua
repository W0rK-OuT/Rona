return function (self) 
local myKeys = self.keys
if _Util:IsTableEmpty(myKeys) then
	myKeys = self:DefaltSetting()
	self.keys = myKeys
end
for k, v in pairs(self.Parent.Children) do
	v:SetEnable(false)
end
for k, v in pairs(myKeys) do
	local clone = self.Parent:GetChildByName("" .. k)
	if clone == nil then
		clone = self.sample:Clone("" .. k)
	end
	local name = v["1"]
	local anX = math.min(0, tonumber(v["2"]))
	local anY = math.max(0, tonumber(v["3"]))
	local sizeX = math.max(80, tonumber(v["4"]))
	local sizeY = math.max(80, tonumber(v["5"]))
	local visible = tonumber(v["6"]) > 0
	
	local uiTrans = clone.UITransformComponent
	uiTrans.anchoredPosition.x = anX - 20
	uiTrans.anchoredPosition.y = anY + 20
	uiTrans.RectSize.x = sizeX
	uiTrans.RectSize.y = sizeY
	
	local buttonName = self:ButtonName(tonumber(k))
	local keyName = self:KeyName(buttonName)
	
	clone:GetChildByName("Text").TextComponent.Text = keyName
	clone:GetChildByName("Visible"):SetVisible(visible)
	clone:SetEnable(true)
end
end