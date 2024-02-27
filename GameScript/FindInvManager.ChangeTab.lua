return function (self,tab) 
self.lastTab = tab

for idx = 0, 5 do
	local find = self.main:GetChildByName("" .. idx)
	if find ~= nil then
		if idx == tab then
			find.SpriteGUIRendererComponent:ChangeMaterial("material://96d416d8-274e-47b8-993f-673a2866e3a9")
		else
			find.SpriteGUIRendererComponent:ChangeMaterial("")
		end
	end
end

self:UpdateUI()
end