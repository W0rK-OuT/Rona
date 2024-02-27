return function (self) 
local item = self.keys["" .. self.clickIndex]
if item == nil then
	self.settingMain:SetEnable(false)
	return
end
-- 키네임 // 좌표 x, y // 크기 x, y // visual
local posX = tonumber(item["2"])
local posY = tonumber(item["3"])
local sizeX = tonumber(item["4"])
local sizeY = tonumber(item["5"])
local on = tonumber(item["6"])

local buttonName = self:ButtonName(self.clickIndex)
local keyName = self:KeyName(buttonName)

self.settingMain:GetChildByName("KeyName").TextComponent.Text = "선택한 키 : " .. keyName
self.settingMain:GetChildByName("PosText").TextComponent.Text = "x : " .. -posX .. " y : " .. posY
self.settingMain:GetChildByName("SizeText").TextComponent.Text = "가로 : " .. sizeX .. " 세로 : " .. sizeY
self.settingMain:GetChildByName("On"):GetChildByName("X"):SetEnable(on == 1)
self.settingMain:SetEnable(true)
end