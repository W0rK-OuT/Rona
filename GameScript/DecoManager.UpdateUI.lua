return function (self) 
if self.checkUpdate then
	return
end
self.checkUpdate = true

local sample = self.main:GetChildByName("Grid"):GetChildByName("Sample")
sample:SetEnable(false)

local remove = sample:Clone("0")
remove.SpriteGUIRendererComponent.ImageRUID = ""

local findTable = _Util:FindTable_All("DecoSkin")
for k, v in pairs(findTable) do
	local clone = sample:Clone("" .. k)
	clone.SpriteGUIRendererComponent.ImageRUID = v["id"]
end
end