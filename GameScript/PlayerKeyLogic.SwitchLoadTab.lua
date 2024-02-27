return function (self,arg1) 
self.tab = arg1
local strs = {"Skill", "Item"}
for key, value in pairs(strs) do
	if key - 1 == arg1 then
		self.loadMain:GetChildByName(value).SpriteGUIRendererComponent:ChangeMaterial("material://15e7095c-58a6-4060-ae1f-3ef5235f9d8c")
	else
		self.loadMain:GetChildByName(value).SpriteGUIRendererComponent:ChangeMaterial("")
	end
end

self:UpdateLoadInfo()
end