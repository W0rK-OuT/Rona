return function (self) 
local child1 = self.main:GetChildByName("1")
local child2 = self.main:GetChildByName("2")
local child3 = self.main:GetChildByName("3")

---@type table<Entity>
local chs = {child1, child2, child3}
for k, v in pairs(chs) do
	if v.Name == "" .. self.lastTab then
		v.SpriteGUIRendererComponent.ImageRUID = "39d7ad8a97ee426f946dcf136aa4ec2c"
	else
		v.SpriteGUIRendererComponent.ImageRUID = "5dd6518bb00f4b88b013175a12280814"
	end
end

self:UpdateQuest()
end