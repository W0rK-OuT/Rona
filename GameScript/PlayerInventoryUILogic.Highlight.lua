return function (self) 
local tabs = self.main:GetChildByName("Tabs")
for key, value in pairs(tabs.Children) do
    if value.Name == "inv" .. self.lastTab then
		value.SpriteGUIRendererComponent:ChangeMaterial("material://8e34ae89-6f30-4845-9b1f-c1832328ad2b")
        --value.SpriteGUIRendererComponent:ChangeMaterial("material://9dfb1d25-28b5-402a-a6b0-03e27867a3ba")
    else
        value.SpriteGUIRendererComponent:ChangeMaterial("")
    end
end

if self.tab == self.lastTab then
	local item = self.grid:GetChildByName(self.lastSlot)
	if item ~= nil then
		item:AttachChild(self.lastGain)
		self.lastGain:SetEnable(true)
		local anPos = self.lastGain.UITransformComponent.anchoredPosition
		anPos.x = 5
		anPos.y = -5
		return
	end
end
self.lastGain:SetEnable(false)
end