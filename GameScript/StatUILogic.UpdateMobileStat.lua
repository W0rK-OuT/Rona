return function (self) 
local ap = self.mobileStats["ap"]
local str = self.mobileStats["str"]
local dex = self.mobileStats["dex"]
local int = self.mobileStats["int"]
local luk = self.mobileStats["luk"]

self.mobileDistribution:GetChildByName("Msg").TextComponent.Text = "남은 AP : " .. ap
self.mobileDistribution:GetChildByName("Value").TextComponent.Text = "+" .. str .. "\n\n\n+" .. dex .. "\n\n\n+" .. int .. "\n\n\n+" .. luk
end