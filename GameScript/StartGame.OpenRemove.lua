return function (self,num) 
if num == nil or num < 0 or num >= self.maxCount then
	return
end

local charInfos = _UserService.LocalPlayer.InventoryComponent:GetItemsWithType(CharInfos)
local charInfosLen = #charInfos
if charInfosLen == 0 then
	return
end

---@type CharInfos
local infos = charInfos[1]
if _UtilLogic:IsNilorEmptyString(infos.data) then
	return
end

local nTable = _HttpService:JSONDecode(infos.data)

local charInfo = nTable[tostring(num)]
if charInfo == nil then
	return
end
local level = _GameUtil:ConvertValue(charInfo["level"], 0)
local job = _GameUtil:ConvertValue(charInfo["job"], 0)
local jobName = _GameUtil:JobName(job)
if level == 0 then
	return
end

self.removeIndex = num
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 2)
self.removeInfo:GetChildByName("InPut").TextInputComponent.Text = ""
self.removeInfo:GetChildByName("UIText").TextComponent.Text = "'" .. (num + 1) .. "번 캐릭터 삭제'를 입력하세요.\n삭제 대상 Lv. " .. level .. " (" .. jobName .. ")"
self.removeInfo:SetEnable(true)
end