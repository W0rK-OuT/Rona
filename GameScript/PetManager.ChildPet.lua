return function (self,isLeave) 
local player = _UserService.LocalPlayer
if not isvalid(player) then
	return
end
local pet = self.pet
if not isvalid(pet) then
	return
end
if isLeave then
	player:AttachChild(pet)
else
	local map = player.CurrentMap
	map:AttachChild(pet)
end
end