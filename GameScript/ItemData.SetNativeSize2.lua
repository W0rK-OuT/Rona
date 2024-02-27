return function (self,entity,id,nSize) 
local localScale = entity.SpriteGUIRendererComponent.LocalScale
local pos = entity.SpriteGUIRendererComponent.LocalPosition
if not _GameUtil:IsNoEquipRUID(id) and id < 2000000 then
	localScale.x = 1
	localScale.y = 1
	pos.x = 0
	pos.y = 0
	return
end

local sizeTable = _ItemData:GetSize(id)

if not isvalid(entity) then
	return
end

---@type Vector2
local size = sizeTable[1]
---@type Vector2
local pivot = sizeTable[2]

localScale.x = nSize
localScale.y = nSize

pos.x = -size.x + pivot.x * nSize
pos.y = -size.y + pivot.y * nSize
end