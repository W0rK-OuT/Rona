return function (self,event) 
-- Parameters
local SortingLayer = event.SortingLayer
---------------------------------------------------------
if self.Entity == _UserService.LocalPlayer then
	return
end
local partyHp = self.Entity:GetChildByName("partyHp")
if partyHp ~= nil then
	partyHp.SpriteRendererComponent.SortingLayer = SortingLayer
	partyHp:GetChildByName("Black").SpriteRendererComponent.SortingLayer = SortingLayer
end

end