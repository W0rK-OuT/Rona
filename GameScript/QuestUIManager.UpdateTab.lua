return function (self) 
local child1 = self.main:GetChildByName("1")
local child2 = self.main:GetChildByName("2")
local child3 = self.main:GetChildByName("3")

---@type table<Entity>
local chs = {child1, child2, child3}
for k, v in pairs(chs) do
	if v.Name == "" .. self.lastTab then
		v.SpriteGUIRendererComponent:ChangeMaterial("material://96d416d8-274e-47b8-993f-673a2866e3a9")
	else
		v.SpriteGUIRendererComponent:ChangeMaterial("")
	end
end

self:UpdateQuest()
end