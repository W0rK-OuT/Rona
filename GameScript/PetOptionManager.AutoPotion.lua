return function (self,type,value,curValue) 
local oriValue = type == 0 and self.oriHp or self.oriMp
if type == 0 then
	self.oriHp = value
else
	self.oriMp = value
end

if value > curValue then
	return
end
if not _UserService.LocalPlayer.PlayerStats:IsActing() then
	return
end

local petOption = _UserService.LocalPlayer.PlayerSetting.petOption
local healValue = _GameUtil:ConvertValue(petOption[type == 0 and "Hp" or "Mp"], 0)
if healValue == 0 then
	return
end
local healCode = _GameUtil:ConvertValue(petOption[type == 0 and "HpCode" or "MpCode"], 0)
if healCode == 0 then
	return
end

local nPer = math.floor(value / curValue * 100)
if nPer > healValue then
	return
end

if oriValue == 0 then
	return
end
if value > oriValue then
	return
end

local quantity = _UserService.LocalPlayer.PlayerInventory:ItemQuantity(healCode)
if quantity == 0 then
	return
end
if quantity <= 10 then
	_MessageLogic:ChatMessage(5, "등록한 " .. (type == 0 and "HP" or "MP") .. "회복 아이템의 개수가 " .. (quantity - 1) .. "개 남았습니다.")
end

_UseItem:UseItem(healCode)
end