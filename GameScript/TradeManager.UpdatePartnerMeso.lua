return function (self,meso) 
local botLeft = self.main:GetChildByName("BotLeft")
local pMeso = botLeft:GetChildByName("PartnerMeso")
if meso == -1 then
	pMeso:GetChildByName("Meso1").TextComponent.Text = ""
else
	pMeso:GetChildByName("Meso1").TextComponent.Text = _Util:ConvertComma(meso)
end
pMeso:GetChildByName("Meso2").TextComponent.Text = self:ConvertMeso(meso)
end