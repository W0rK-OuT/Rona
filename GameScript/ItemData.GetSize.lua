return function (self,id) 
if id == 0 then
	local getSize = {Vector2(0, 0), Vector2(0, 0)}
	self.sizes[id] = getSize
	return getSize
end

local getSize = self.sizes[id]
if getSize == nil then
	local itemData = self:GetItem(id)
	local ruid = _GameUtil:EquipRUID(id, itemData["ruid"])
	
	local sprite = _ResourceService:LoadSpriteAndWait(ruid)
	getSize = {Vector2(sprite.Width, sprite.Height), sprite.PivotPixel}
	self.sizes[id] = getSize
end
return getSize
end