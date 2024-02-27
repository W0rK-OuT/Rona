return function (self) 
local bar = _UserService.LocalPlayer:GetChildByName("Gagebar")
if bar == nil then
	bar = _SpawnService:SpawnByModelId("model://c2a4a892-6f26-4608-9bad-d1fc0d72c842", "Gagebar", Vector3(0, 0.95, 0), _UserService.LocalPlayer)
	bar:SetEnable(false)
	self:UpdateColor()
end
self.main = bar
self.bar = bar:GetChildByName("Bar")
for k, v in pairs(self.main.Children) do
	local order = _UserService.LocalPlayer.AvatarRendererComponent.OrderInLayer
	v.SpriteRendererComponent.OrderInLayer = order == 0 and 3 or order
	v.SpriteRendererComponent.Color.a = 1
end

self.soundAndEffect[5101004] = {
	["sound"] = "7a8855c3e5164adc820dbeb7c72937d9",
	["effect"] = "030ac6100cf74d719ff3a62e33ddb877",
}
self.soundAndEffect[2121001] = {
	["sound"] = "43a5f3f9dca74d698799f337d7c92e7d",
	["effect"] = "bb1b7938357d4983b240be6dbc772805",
}
self.soundAndEffect[3221001] = {
	["sound"] = "23b2764b190d473fb2bbf324fe9707de",
	["effect"] = "47e83fe8df9243cdbd51c2b69ec17355",
}

local call = function()
end

local sounds = {}
for k, v in pairs(self.soundAndEffect) do
	local sound = v["sound"]
	if not _UtilLogic:IsNilorEmptyString(sound) then
		table.insert(sounds, sound)
	end
end
_ResourceService:PreloadAsync(sounds, call)
end