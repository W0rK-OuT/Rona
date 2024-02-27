return function (self,slot) 
self.lastPlayerSlot = slot

local topGrid = self.main:GetChildByName("TopGrid")
for _, v in pairs(topGrid.Children) do
	if v.Name == slot then
		v.SpriteGUIRendererComponent:ChangeMaterial("material://96d416d8-274e-47b8-993f-673a2866e3a9")
	else
		v.SpriteGUIRendererComponent:ChangeMaterial("")
	end
end

self:UpdateUI()
end