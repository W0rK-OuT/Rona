return function (self,tab) 
local ori = self.lastTab
if ori == tab then
	return
end
self.lastTab = tab
local job = _UserService.LocalPlayer.PlayerStats.job

for key, value in pairs(self.tabs.Children) do
	if value.Name == "Tab" .. tab then
		value.SpriteGUIRendererComponent.Color = Color(238 / 255, 102 / 255, 136 / 255)
	else
		value.SpriteGUIRendererComponent.Color = Color(187 / 255, 187 / 255, 187 / 255)
	end
end
self:UpdateSkills(job)
self:UpdateSP()
end