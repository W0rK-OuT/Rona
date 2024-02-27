return function (self) 
self.maps = {
	{123000000, "5a834c120468438c8038b26923314334"},
	{10000, "bdbca3171f76499ab1403b20b2525cb6"},
	{1000000, "eb4701e67870495894b7612876f15f05"},
	{2000000, "5257421a8b064d69a7fd50a7c3da4a55"},
	{100000000, "ded64a13216c4398bbf24622a7a26a26"},
	{101000000, "3bf1c24bf3f54049b67c30934d261310"},
	{102000000, "c4d9ae30b5754d77922f92a2c9e3a3d2"},
	{103000000, "70294f55d2944e0d9fb9f5b88967bf0b"},
	{103040000, "94007ed727734a42894a3f987502b700"},
	{104000000, "84355e61d9b14b37b56905f8ab9caeb9"},
	{120000000, "d781a1dc11eb44cf99fbd83ca0cd784f"},
	{105040300, "0561a1adbe45479c9a10018762790eb8"},
	{110000000, "84355e61d9b14b37b56905f8ab9caeb9"},
	{200000000, "bd921cd5595646ac8ad1c8087f739961"},
	{209000000, "882fd805cfd8416399632c6e4f64bf2f"},
	{211000000, "5c8f297382e649ae82c6038b69c35391"},
	{220000000, "0f217ffb42124190b2f81d4da84a7a90"},
	{221000000, "87b0d468bce74789b649e91f75a81ccd"},
	{222000000, "98139b65a5464e30b6eab31b214dd74d"},
	{230000000, "a447433a18e54323a1b283c52bb9b979"},
	{240000000, "c9885113d68b456a9e545461258e4bc3"},
	{250000000, "d50b5fa3ad1c4c4c94decaf69aad8406"},
	{251000000, "59774a3f985c4b7cade397edd9e9cee5"},
	{260000000, "12d78853131b4fa4a0eed9a7350e5fe9"},
	{261000000, "76c0aede0c2e4f04bb8413217e82f60b"},
}

if self:IsClient() then
	local sample = self.main:GetChildByName("Grid"):GetChildByName("Sample")
	sample:SetEnable(false)
	for k, v in pairs(self.maps) do
		local clone = sample:Clone("" .. v[1])
		clone:GetChildByName("UIText").TextComponent.Text = _MapData:GetMapName(v[1])["mapName"]
		clone:GetChildByName("UISprite").SpriteGUIRendererComponent.ImageRUID = v[2]
	end
	self.main:SetEnable(false)
	_UIManager:Remove(self.main)
end
end