return function (self,id) 
if id == 0 then
	return
end

local getSize = self.sizes[id]
if getSize == nil then
	local nTable = {}
	local func = function()
		local itemData = self:GetItem(id)
		local ruid = _GameUtil:EquipRUID(id, itemData["ruid"])
		if not _UtilLogic:IsNilorEmptyString(ruid) then
			local sprite = _ResourceService:LoadSpriteAndWait(ruid)
			nTable[1] = Vector2(sprite.Width, sprite.Height)
			nTable[2] = sprite.PivotPixel
		else
			nTable[1] = Vector2(0, 0)
			nTable[2] = 0
		end
		self.sizes[id] = nTable
	end
	_TimerService:SetTimerOnce(func, 0)
end
end