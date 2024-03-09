return function (self,equipID,scrollID) 
local scrollType = math.floor(scrollID % 10000 / 100)
local itemType = math.floor(equipID / 10000 % 100)
if scrollType == itemType then
	return true
end
if _GameUtil:IsPetEquip(equipID) then
	return false
end
if _GameUtil:IsBadge(equipID) then
	return false
end
if _GameUtil:IsPocket(equipID) then
	return false
end

if scrollType == 60 then
	return _GameUtil:IsOneHand(equipID)
end
if scrollType == 61 then
	return _GameUtil:IsTwoHand(equipID)
end
if scrollType == 62 then -- 방어구 주문서
	if _GameUtil:IsWeapon(equipID) or _GameUtil:IsAccessory(equipID) then
		return false
	end
	return true
end
if scrollType == 63 then -- 악세서리 주문서
	if _GameUtil:IsAccessory(equipID) then
		return true
	end
	return false
end
if scrollType >= 70 and scrollType <= 73 then -- 연성서
	return false
end
if scrollType == 90 or scrollType == 91 then -- 백줌 혼줌
	return true
end
if scrollType == 92 then -- 악세서리 주문서(펜던트,벨트,반지)
	if _GameUtil:IsPenBelRing(equipID) then
		return true
	end
	return false
end
return false
end