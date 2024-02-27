return function (self,itemID) 
local player = _UserService.LocalPlayer

local list = {player.PlayerKey.mainKey, player.PlayerKey.listKey}
local top = self.main:GetChildByName("Top")
local bot = self.main:GetChildByName("Bot")
for ind, pEn in pairs(list) do
	for k, v in pairs(pEn) do
		if _UtilLogic:Contains(v, "I-") then
			if itemID ~= 0 and "I-" .. itemID ~= v then
				continue
			end
			if ind == 1 then
				local info = self:GetKeyInfo(v)
				local findKey = top:GetChildByName(k)
				if findKey ~= nil then
					local fin = findKey:GetChildByName("Key")
					if fin ~= nil then
						fin.SpriteGUIRendererComponent.Color = info["color"]
						fin.SpriteGUIRendererComponent.ImageRUID = info["ruid"]
						fin:GetChildByName("Desc").TextComponent.Text = info["keyName"]
					end
				end
			else
				local keyStr = tostring(k)
				local spawn = bot:GetChildByName(keyStr)
				if spawn ~= nil then
					local info = self:GetKeyInfo(v)
					spawn.SpriteGUIRendererComponent.Color = info["color"]
					spawn.SpriteGUIRendererComponent.ImageRUID = info["ruid"]
					local texCom = spawn:GetChildByName("Desc").TextComponent
					texCom.Text = info["keyName"]
				end
			end
		end
	end
end
end