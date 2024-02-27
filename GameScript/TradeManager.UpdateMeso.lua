return function (self,meso) 
local botLeft = self.main:GetChildByName("BotLeft")
local pMeso = botLeft:GetChildByName("PlayerMeso")
pMeso:GetChildByName("Meso1").TextComponent.Text = _Util:ConvertComma(meso)
pMeso:GetChildByName("Meso2").TextComponent.Text = self:ConvertMeso(meso)
end