return function (self,meso) 
local botLeft = self.main:GetChildByName("BotLeft")
local pMeso = botLeft:GetChildByName("PartnerMeso")
if meso == -1 then
	pMeso:GetChildByName("MesoBar"):GetChildByName("Meso").TextComponent.Text = ""
else
	pMeso:GetChildByName("MesoBar"):GetChildByName("Meso").TextComponent.Text = _Util:ConvertComma(meso)
end
pMeso:GetChildByName("MesoBar2"):GetChildByName("Meso").TextComponent.Text = self:ConvertMeso(meso)
end