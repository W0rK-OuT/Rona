return function (self,isGM,sender,nickName,profileCode,text,type,color) 
if self.isRemove then
	return
end

for _, v in pairs(_UserService.LocalPlayer.PlayerSetting.chatBans) do
	if v == profileCode then
		if self.bans[profileCode] == nil then
			text = "차단한 유저의 메세지입니다. #" .. profileCode .. " (재접속 시 까지 해당 유저의 메세지는 보이지 않습니다.)"
			self.bans[profileCode] = true
		else
			return
		end
	end
end

local base
if type == 0 then
	base = "<전체> "
elseif type == 1 then
	base = "<맵> "
elseif type == 2 then
	base = "<파티> " -- 255, 153, 204
end

local isMine = sender == _UserService.LocalPlayer.Name

--if isMine then
--    base ..= "<color=cyan>" .. nickName .. "</color>"
--else
--    base ..= "<color=orange>" .. nickName .. "</color>"
--end
base ..= nickName

--if _GameUtil:IsGameMaster(sender) then
--    base ..= " [Creator]"
--end

base ..= " : " .. text

self.totalCount += 1

local slgc = self.grid.ScrollLayoutGroupComponent
local clone = self.sample:Clone("msg")
local textCom = clone.TextComponent
textCom.Text = base
if color ~= nil then
	textCom.FontColor = color
end

if isGM then
	clone.SpriteGUIRendererComponent.Color = Color(1, 1, 1, 0.75)
--elseif _GameUtil:IsGameMaster2(sender) then
--    clone.SpriteGUIRendererComponent.Color = Color(1, 1, 0, 0.75)
elseif isMine then
	clone.SpriteGUIRendererComponent.Color = Color(1, 150 / 255, 0, 0.6)
end

if isMine then
	self:Down()
else
	if self.totalCount <= self.maxCount then
		slgc:SetScrollPositionByItemIndex(self.totalCount)
	elseif slgc:GetScrollNormalizedPosition(UITransformAxis.Vertical) == 1 then
		slgc:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
	end
end

if self.totalCount >= 100 then
	local msg = self.grid:GetChildByName("msg")
	if msg ~= nil then
		msg:Destroy()
		self.totalCount -= 1
	end
end
end