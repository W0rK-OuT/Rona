return function (self) 
_SoundService:PlaySound("e22a5d10bf934b3fb311f9bc45d74ec2", 1)

if not self.init then
	local sample = self.main:GetChildByName("Grid"):GetChildByName("Sample")
	local dataName = _RateManager.rate and "R_BMData" or "V_BMData"
	for k, v in pairs(_Util:FindTable_All(dataName)) do
		local id = v["id"]
		local ruid = v["ruid"]
		local price = v["price"]
		local name = v["name"]
		local clone = sample:Clone(id)
		clone:GetChildByName("Name").TextComponent.Text = name
		clone:GetChildByName("Price").TextComponent.Text = _Util:ConvertComma(price) .. " 월드코인"
		clone:GetChildByName("Icon").SpriteGUIRendererComponent.ImageRUID = ruid
	end
	self.init = true
end
self:SetTab(0)
self.main:SetEnable(true)
_UIManager:Add(self.main)
end