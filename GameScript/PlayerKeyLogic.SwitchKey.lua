return function (self,key1,key2) 
if key1 == key2 then
	return
end
if _PlayerWeather:IsKeyStop() then
	_MessageLogic:DropMessage("움직임 제어 상태에선 변경이 불가능합니다.")
	return
end
_UserService.LocalPlayer.PlayerKey:SwitchKey(key1, key2)
end