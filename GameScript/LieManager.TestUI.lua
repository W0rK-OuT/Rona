return function (self,nTable) 
local grid = self.testMain:GetChildByName("Grid")
local sample = self.testMain:GetChildByName("Sample")
sample:SetEnable(false)

for k, v in pairs(nTable) do
	for idx = 1, 4 do
		local num = k * 10 + idx
		local clone = grid:GetChildByName("" .. num)
		if clone == nil then
			clone = _SpawnService:SpawnByEntity(sample, "" .. num, Vector3.zero, grid)
		end
		if self.isNumber then
			clone:GetChildByName("number").TextComponent.Text = v[idx]
			clone:GetChildByName("ruid"):SetEnable(false)
		else
			clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = v[idx]
			clone:GetChildByName("number"):SetEnable(false)
		end
		clone:GetChildByName("text").TextComponent.Text = v[idx + 4]
	end
end

self.testMain:SetEnable(true)
end