return function (self,allCount,data) 
if not Environment:IsPublishedPlay() then
	local nData = {}
	nData["id"] = "testcode"
	nData["currentUserCount"] = 1
	nData["maxUserCount"] = 30
	data[1] = nData
	
	local nData2 = {}
	nData2["id"] = _WorldInstanceService.WorldInstanceId
	nData2["currentUserCount"] = 1
	nData2["maxUserCount"] = 1
	data[2] = nData2
	
	local nData3 = {}
	nData3["id"] = "testcode2"
	nData3["currentUserCount"] = 30
	nData3["maxUserCount"] = 30
	data[3] = nData3
end

local worldID = _WorldInstanceService.WorldInstanceId

local chatMsg = ""
local nTable = {}
for index, v in pairs(data) do
	local id = v["id"]
	local currentUserCount = v["currentUserCount"]
	local maxUserCount = v["maxUserCount"]
	
	local clone = self.grid:GetChildByName("" .. index)
	if clone == nil then
		clone = self.sample:Clone("" .. index)
	end
	
	local button = clone:GetChildByName("Button")
	local arrow = clone:GetChildByName("Arrow")
	local text = clone:GetChildByName("Text")
	
	local cm = button.ChannelMain
	cm.id = id
	cm.currentUserCount = currentUserCount
	cm.maxUserCount = maxUserCount
	
	text.TextComponent.Text = "CH. " .. index
	if _WorldInstanceService.WorldInstanceId == id then
		chatMsg = index .. "채널 입장 중"
		clone.SpriteGUIRendererComponent.ImageRUID = "49555271987c43459df04d3c4d43b3a5"
		button:SetEnable(false)
		arrow:SetEnable(false)
	elseif currentUserCount > maxUserCount - 5 then
		clone.SpriteGUIRendererComponent.ImageRUID = "82536ff8974a45b0806b5ec8f47da55b"
		button:SetEnable(true)
		arrow:SetEnable(true)
	else
		clone.SpriteGUIRendererComponent.ImageRUID = "f7861d04b5c94fef980edf0331ba9665"
		button:SetEnable(true)
		arrow:SetEnable(true)
	end
	
	clone:SetEnable(true)
	
	nTable["" .. index] = true
end
for k, v in pairs(self.grid.Children) do
	if nTable[v.Name] == nil then
		v:SetEnable(false)
	end
end

self.main:GetChildByName("Text").TextComponent.Text = "이동 가능한 채널 접속자 : " .. allCount .. "명 (" .. chatMsg .. ")"

self.main:SetEnable(true)
_UIManager:Add(self.main)
end