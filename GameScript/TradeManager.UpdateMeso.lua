return function (self,meso) 
local botLeft = self.main:GetChildByName("BotLeft")
local pMeso = botLeft:GetChildByName("PlayerMeso")
pMeso:GetChildByName("MesoBar"):GetChildByName("Meso").TextComponent.Text = _Util:ConvertComma(meso)
pMeso:GetChildByName("MesoBar2"):GetChildByName("Meso").TextComponent.Text = self:ConvertMeso(meso)
end