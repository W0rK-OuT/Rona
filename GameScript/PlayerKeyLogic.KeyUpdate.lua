return function (self,all) 
local player = _UserService.LocalPlayer

local nTable = {
	["Escape"] = "C-ESC",
	["Tab"] = "C-Tab",
	["Return"] = "C-Enter",
	["KeypadEnter"] = "C-Enter2",
}

local controller = player.PlayerControllerComponent

if all then
	for k,v in pairs(KeyboardKey) do
		if k ~= "__CastFrom" and k ~= "CastFrom" and k ~= "UnderlyingSystemType" then
			controller:RemoveActionKey(v)
		end
	end
end

local tTable = {}
local qTable = {}
local top = self.main:GetChildByName("Top")
local quickSlot = self.mainQuickSlot

table.clear(self.holdKey)
table.clear(self.downKey)
table.clear(self.dirKey)

local roof = {nTable, player.PlayerKey.mainKey}
for _, roofValue in pairs(roof) do
	for key, value in pairs(roofValue) do
		local keyboard = KeyboardKey[key]
		if keyboard ~= nil then
            --if all then
            --    controller:SetActionKey(keyboard, value)
            --end
			if _UtilLogic:Contains(value, "S-") or _UtilLogic:Contains(value, "I-") or	value == "C-Roof" then
				self.holdKey[keyboard] = value
			elseif _UtilLogic:Contains(value, "C-") then
				self.downKey[keyboard] = value
			else
				if _UtilLogic:Contains(value, "Move") then
					self.dirKey[keyboard] = value
				end
				if all then
					controller:SetActionKey(keyboard, value)
				end
			end
			
			local info = self:GetKeyInfo(value)
			local findKey = top:GetChildByName(key)
			if findKey ~= nil then
				local fin = findKey:GetChildByName("Key")
				if fin ~= nil then
					fin.SpriteGUIRendererComponent.Color = info["color"]
					fin.SpriteGUIRendererComponent.ImageRUID = info["ruid"]
					fin:GetChildByName("Desc").TextComponent.Text = info["keyName"]
					fin:SetEnable(true)
					tTable[key] = true
				end
			end
			-- 퀵슬롯
			local findMobile = quickSlot:GetChildByName(key)
			if findMobile ~= nil then
				qTable[key] = true
				local fin = findMobile:GetChildByName("Key")
				if fin ~= nil then
					fin.SpriteGUIRendererComponent.Color = info["color"]
					fin.SpriteGUIRendererComponent.ImageRUID = info["ruid"]
					local textCom = fin:GetChildByName("Desc").TextComponent
					textCom.Text = info["keyName"]
					textCom.FontSize = info["size"]
					fin:SetEnable(true)
				end
				local coolCom = findMobile:GetChildByName("Cool").KeyCoolTime
				if _UtilLogic:Contains(value, "S-") then
					coolCom.id = tonumber(_UtilLogic:SubString(value, 3))
				elseif _UtilLogic:Contains(value, "I-") then
					coolCom.id = -tonumber(_UtilLogic:SubString(value, 3))
				end
				--coolCom.Enable = coolCom:CalcTime()
			end
		end
	end
end

for key, value in pairs(top.Children) do
	if tTable[value.Name] == nil then
		value:GetChildByName("Key"):SetEnable(false)
	end
end

for key, value in pairs(quickSlot.Children) do
	if qTable[value.Name] == nil then
		value:GetChildByName("Key"):SetEnable(false)
		local coolCom = value:GetChildByName("Cool").KeyCoolTime
		coolCom:Close(true)
		coolCom.Enable = false
	end
end

local bottom = self.main:GetChildByName("Bot")
for k, v in pairs(bottom.Children) do
	v:SetEnable(false)
end
for k, v in pairs(player.PlayerKey.listKey) do
	local keyStr = tostring(k)
	local spawn = bottom:GetChildByName(keyStr)
	if spawn == nil then
		spawn = _SpawnService:SpawnByEntity(self.botSample, keyStr, Vector3.zero, bottom)
	end
	local info = self:GetKeyInfo(v)
	spawn.SpriteGUIRendererComponent.Color = info["color"]
	spawn.SpriteGUIRendererComponent.ImageRUID = info["ruid"]
	local texCom = spawn:GetChildByName("Desc").TextComponent
	texCom.Text = info["keyName"]
	spawn:SetEnable(true)
end

self:CalcCoolTime()
end