return function (self,nTable,codeIndex,randIndex) 
if nTable == nil then
	local grid = self.main:GetChildByName("Grid")
	for k, v in pairs(grid.Children) do
		v:SetEnable(false)
	end
else
	local sample = self.grid:GetChildByName("Sample")
	local totalRand = 0
	for k, v in pairs(nTable) do
		totalRand += v[randIndex]
	end
	local able = {}
	for k, v in pairs(nTable) do
		local clone = self.grid:GetChildByName("" .. k)
		if clone == nil then
			clone = sample:Clone("" .. k)
		end
		able["" .. k] = true
		
		local id = v[codeIndex]
		local rand = v[randIndex]
		local itemData = _ItemData:GetItem(id)
		if _Util:IsTableEmpty(itemData) then
			clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = ""
		else
			clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = itemData["ruid"]
		end
		clone:GetChildByName("text").TextComponent.Text = _GameUtil:ConvertString(itemData["name"], "이름 없음") .. " -> " .. math.floor(rand / totalRand * 10000) / 100 .. "%"
		clone:GetChildByName("code").TextComponent.Text = id
		clone:SetEnable(true)
	end
	for k, v in pairs(self.grid.Children) do
		if able[v.Name] == nil then
			v:SetEnable(false)
		end
	end
	self:OpenUI()
end
end