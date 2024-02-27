return function (self) 
self.main:SetEnable(false)
if _MapData:StartMapName() ~= _UserService.LocalPlayer.CurrentMapName then
	if _UserService.LocalPlayer.CurrentMap.MapInfo == nil then
		self:UpdateMiniMap(tonumber(_UtilLogic:SubString(_UserService.LocalPlayer.CurrentMapName, 4)))
	else
		self:UpdateMiniMap(_UserService.LocalPlayer.CurrentMap.MapInfo.id)
	end
	
end
end