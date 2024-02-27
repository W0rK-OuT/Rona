return function (self,arg1) 
_UserService.LocalPlayer.PlayerKey.pcButtons = arg1

self:UpdateButtons(true)
self:UpdateButtons(false)
end