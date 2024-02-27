return function (self) 
local myIndex = _UserService.LocalPlayer.PlayerParty.partyIndex
for k, v in pairs(self.move.Children) do
	local findPlayer = _UserService:GetUserEntityByUserId(v.Name)
	if isvalid(findPlayer) then
		if myIndex == 0 or findPlayer.PlayerParty.partyIndex ~= myIndex then
			v.SpriteGUIRendererComponent.ImageRUID = "9a33612fd55e448fa85d67c9b7757f76"
		else
			v.SpriteGUIRendererComponent.ImageRUID = "3e1ad6bd8188426cb8142770f717f952"
		end
	end
end
end