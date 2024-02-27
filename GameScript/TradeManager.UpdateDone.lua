return function (self,mine,state) 
local botLeft = self.main:GetChildByName("BotLeft")
if mine then
	botLeft:GetChildByName("PBR"):SetEnable(state)
else
	botLeft:GetChildByName("PBL"):SetEnable(state)
end
end