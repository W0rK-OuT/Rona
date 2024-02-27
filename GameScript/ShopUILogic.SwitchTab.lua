return function (self,newTab) 
if newTab < 1 or newTab > 5 then
	return
end

local ori = self.invSlot
if ori == newTab then
	return
end

local tabs = self.clone:GetChildByName("RightBotton"):GetChildByName("Tabs")
for key, value in pairs(tabs.Children)  do
    if value.Name == "inv" .. newTab then
		value.SpriteGUIRendererComponent.Color = Color(194 / 255, 99 / 255, 99 / 255)
    else
		value.SpriteGUIRendererComponent.Color = Color(173 / 255, 173 / 255, 173 / 255)
	end
end

self.invSlot = newTab
if self.invIndex > 0 then
	self:InvItemClick(0)
end
self:UpdateInventory()
end