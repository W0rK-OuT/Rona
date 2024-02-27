return function (self,num) 
if num == nil then
	return
end
if num < 0 or num >= self.maxCount then
	return
end
if self.check then
	return
end
self.check = true
_SoundService:PlaySound("79ae0990eb324a4db36c835841735335", 1)

self:CloseUI()
_UserService.LocalPlayer.PlayerSave:Login(Environment:IsMobilePlatform(), math.floor(num))
end