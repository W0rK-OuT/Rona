return function (self) 
if _UserService.LocalPlayer.PlayerBuff.dashKey > 0 then
	_UserService.LocalPlayer.PlayerBuff:CancelBuffToServer(_UserService.LocalPlayer.PlayerBuff.dashKey)
end
end