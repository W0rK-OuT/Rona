return function (self) 
if Environment:IsMobilePlatform() then
	self.mainQuickSlot = self.mobileQuickSlot
	_MessageLogic.showMain.UITransformComponent.anchoredPosition.x += -550
	_MessageLogic.showMain.UITransformComponent.anchoredPosition.y = self.downValue
else
	self.mainQuickSlot = self.pcQuickSlot
	_MessageLogic.showMain.UITransformComponent.anchoredPosition.y = self.upValue
	self.up = true
end

self.main:SetEnable(false)
_UIManager:Remove(self.main)
self.topSample:SetEnable(false)
self.botSample:SetEnable(false)
self.main:GetChildByName("Remove"):SetEnable(false)

local size = 70
local start = 55 -- 처음 위치
local sizeOne = 80 -- 간격
local sizeTwo = 30 -- 간격2

local keyTable = self:BaseTable(size, start, sizeOne, sizeTwo)

--self:CloseUI()
local top = self.main:GetChildByName("Top")
--for key, value in pairs(top.Children) do
--    value:Destroy()
--end
--local bot = self.main:GetChildByName("Bot")
--for key, value in pairs(bot.Children) do
--    value:Destroy()
--end

local worldPos = self.topSample.UITransformComponent.WorldPosition
for _, value in pairs(keyTable) do
	local name = value[1]
	local key = value[2]
	local x = value[3]
	local y = value[4]
	local rectX = value[5]
	local rectY = value[6]
	
	local spawn = _SpawnService:SpawnByEntity(self.topSample, name, Vector3.zero, top)
	if name == "none" then
		--spawn:GetChildByName("KeyButton"):RemoveComponent(KeySettingButton)
		spawn:GetChildByName("Block").SpriteGUIRendererComponent.Color.a = 0.4
	end
	spawn:GetChildByName("Key"):SetEnable(false)
	spawn:GetChildByName("KeyName").TextComponent.Text = key
	local tarns = spawn.UITransformComponent
	tarns.RectSize.x = rectX
	tarns.RectSize.y = rectY
	tarns.WorldPosition = worldPos
	tarns:Translate(x, -y)
end
--self.topSample:Destroy()
--self:KeyUpdate(true)
end