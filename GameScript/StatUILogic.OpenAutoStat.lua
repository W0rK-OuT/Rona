return function (self,type) 
self.autoType = type
local statTable = self:AutoStatTable(_UserService.LocalPlayer, type)
if statTable == nil then
	self.distribution:SetEnable(false)
	return
end
_SoundService:PlaySound("28a57c34a0b042f6943e6c3048cb9ddc", 1)
local valueText = self.distribution:GetChildByName("Value").TextComponent
local textStr = "+" .. _Util:ConvertNumber(statTable["str"]) ..
				"\n+" .. _Util:ConvertNumber(statTable["dex"]) ..
				"\n+" .. _Util:ConvertNumber(statTable["int"]) ..
				"\n+" .. _Util:ConvertNumber(statTable["luk"])

valueText.Text = textStr
self.distribution:SetEnable(true)
self.mobileDistribution:SetEnable(false)
end