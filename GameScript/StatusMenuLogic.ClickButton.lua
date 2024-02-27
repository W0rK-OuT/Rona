return function (self,name) 
self:CloseUI()
if name == "MapChange" then
	_MoveLogic:CheckUI()
elseif name == "ChannelChange" then
	_ChannelChange:RequestChannel(_UserService.LocalPlayer)
elseif name == "CharMapInfo" then
	_CharInfoLogic:OpenMpaInfo()
elseif name == "CharInfo" then
	_CharInfoLogic:OpenCharBox()
elseif name == "Storage" then
	_StorageManager:CheckUI()
elseif name == "PetOption" then
	_PetOptionManager:CheckUI()
elseif name == "ChatOption" then
	_ChatBanManager:OpenUI()
elseif name == "ThrowOption" then
	_ThrowManager:CheckUI()
elseif name == "DecoOption" then
	_DecoManager:CheckUI()
end
end