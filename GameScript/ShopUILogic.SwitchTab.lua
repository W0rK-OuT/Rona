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
		value.SpriteGUIRendererComponent.ImageRUID = "39d7ad8a97ee426f946dcf136aa4ec2c"
    else
		value.SpriteGUIRendererComponent.ImageRUID = "5dd6518bb00f4b88b013175a12280814"
	end
end

self.invSlot = newTab
if self.invIndex > 0 then
	self:InvItemClick(0)
end
self:UpdateInventory()
end