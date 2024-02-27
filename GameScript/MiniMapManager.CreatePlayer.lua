return function (self,newPlayer) 
local spawn = _SpawnService:SpawnByModelId("model://2b43cb3d-0eb3-4e8a-b957-b645a3c53c16", newPlayer.Name, Vector3.zero, self.move)
spawn.miniObjType.trans = newPlayer.TransformComponent
local myIndex = _UserService.LocalPlayer.PlayerParty.partyIndex
if myIndex == 0 or newPlayer.PlayerParty.partyIndex ~= myIndex then
	spawn.SpriteGUIRendererComponent.ImageRUID = "9a33612fd55e448fa85d67c9b7757f76"
else
	spawn.SpriteGUIRendererComponent.ImageRUID = "3e1ad6bd8188426cb8142770f717f952"
end

end