return function (self,key) 
if _UtilLogic:IsNilorEmptyString(self.lastClick) then
	return
end
---@type KeyboardKey
local nKey = key
if nKey == KeyboardKey.Mouse0 or nKey == KeyboardKey.Mouse1 or nKey == KeyboardKey.Mouse2 then
	return
end

local num = tonumber(self.light.Parent:GetChildByName("Code").TextComponent.Text)
local check = self:CheckKey(_UserService.LocalPlayer, tostring(key), num)
if check == 0 then
	self:SetLastClick("")
	self:KeyChange(_UserService.LocalPlayer, tostring(nKey), num)
elseif check == 1 then
	_MessageLogic:DropMessage("지금 입력한 키는 사용이 제한된 키입니다")
elseif check == 4 then
	_MessageLogic:DropMessage("이미 등록된 키입니다")
end
end