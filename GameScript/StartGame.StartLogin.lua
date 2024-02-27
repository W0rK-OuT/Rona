return function (self,data) 
if Environment:IsMakerPlay() then
    _UserService.LocalPlayer.PlayerSave:Login(Environment:IsMobilePlatform(), 0)
    return
end
self:OpenUI(data)
end