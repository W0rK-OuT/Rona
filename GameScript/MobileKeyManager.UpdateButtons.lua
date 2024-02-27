return function (self) 
local sample = self.mobileButtons:GetChildByName("Sample")
local nnTable = {}
for k, v in pairs(self.keys) do
	local buttonName = self:ButtonName(tonumber(k)) --v[1]
	local keyName = self:KeyName(buttonName)
	local anX = math.min(0, tonumber(v["2"]))
	local anY = math.max(0, tonumber(v["3"]))
	local sizeX = math.max(80, tonumber(v["4"]))
	local sizeY = math.max(80, tonumber(v["5"]))
	local visible = tonumber(v["6"]) == 0
	
	local clone = self.mobileButtons:GetChildByName(buttonName)
	if clone == nil then
		clone = sample:Clone(buttonName)
		clone:GetChildByName("Key"):SetEnable(false)
	end
	local uiTrans = clone.UITransformComponent
	uiTrans.anchoredPosition.x = anX
	uiTrans.anchoredPosition.y = anY + 100
	uiTrans.RectSize.x = sizeX
	uiTrans.RectSize.y = sizeY
	if visible then
		nnTable[buttonName] = 1
		clone:SetEnable(true)
	else
		clone:SetEnable(false)
	end
	
	clone:GetChildByName("UIText").TextComponent.Text = keyName
	clone.ButtonComponent.KeyCode = KeyboardKey.CastFrom(buttonName)
end
for k, v in pairs(self.mobileButtons.Children) do
	if nnTable[v.Name] == nil then
		v:SetEnable(false)
	end
end

_PlayerKeyLogic:KeyUpdate(false)
end