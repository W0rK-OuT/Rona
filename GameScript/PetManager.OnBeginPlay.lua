return function (self) 
self:GetMotion()

if self:IsClient() then
	local grid = _PetOptionManager.main:GetChildByName("Grid"):GetChildByName("Pet"):GetChildByName("Grid")
	local sample = grid:GetChildByName("Sample")
	sample:SetEnable(false)
	
	local pets = {0, 1, 3, 4, 5, 6, 13, 14, 16, 19, 20, 24, 41, 54}
	for k, v in pairs(pets) do
		local clone = sample:Clone("" .. v)
		clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = self.pets[v]["stand0"]
	end
end
end