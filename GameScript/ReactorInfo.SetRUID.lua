return function (self,isBase,oriState,newState) 
local ruid = _ReactorRUID:GetRUID(self.id, oriState, newState, isBase)
if _UtilLogic:IsNilorEmptyString(ruid) then
	ruid = "795249a855fc4fa7a2d7782bc6ecf115"
end

if not isBase then
	self.isHit = true
end
self.Entity.SpriteRendererComponent.SpriteRUID = ruid
end