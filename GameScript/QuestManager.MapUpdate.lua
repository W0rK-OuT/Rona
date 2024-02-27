return function (self) 
local myMap = _UserService.LocalPlayer.CurrentMap

local npcs = myMap:GetChildByName("npcs")
if npcs ~= nil then
	for _, entity in pairs(npcs.Children) do
		self:UpdateNpc(entity)
	end
end
end