return function (self,key,num) 
if num == nil then
	_MessageLogic:ChatMessage(5, "값이 존재하지 않습니다.")
	return
end

if key == "x" or key == "y" then
	if num < 0 or num > 3000 then
		_MessageLogic:ChatMessage(5, "0 이상 2,000 이하만 가능합니다.")
		return
	end
elseif key == "ax" then
	if num < 0 or num > 1 then
		return
	end
else
	return
end

_MobileKeyManager:SetJoystic(_UserService.LocalPlayer, true, key, num)
end