return function (self,playerID,name,text) 
if not self.main.Enable then
	return
end
local nText = _SpawnService:SpawnByEntity(self.textSample, "text", Vector3.zero, self.textGrid)
if playerID == _UserService.LocalPlayer.Name then
	local fontColor = nText.TextComponent.FontColor
	fontColor.g = 102 / 255
	fontColor.b = 153 / 255
end
nText.TextComponent.Text = name .. " : " .. text
self.textGrid.ScrollLayoutGroupComponent:SetScrollNormalizedPosition(UITransformAxis.Vertical, 1)
end