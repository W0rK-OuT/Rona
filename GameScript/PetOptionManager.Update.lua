return function (self,pName,value) 
local grid = self.main:GetChildByName("Grid")

local entityName
if pName == "HpCode" then
	entityName = "Hp"
elseif pName == "MpCode" then
	entityName = "Mp"
else
	entityName = pName
end

local child = grid:GetChildByName(entityName)
if child == nil then
	return
end

if pName == "Sound" or pName == "Effect" then
	child:GetChildByName("Re").TextComponent.Text = "적용값 : " .. (value == 1 and "ON" or "OFF")
elseif pName == "Hp" or pName == "Mp" then
	child:GetChildByName("Re").TextComponent.Text = "적용값 : " .. value .. "%"
elseif pName == "HpCode" or pName == "MpCode" then
	local icon = child:GetChildByName("Icon")
	if value == 0 then
		icon:GetChildByName("Ruid").SpriteGUIRendererComponent.ImageRUID = ""
		icon:GetChildByName("Count").TextComponent.Text = ""
		icon:GetChildByName("UIText").TextComponent.Text = ""
	else
		local itemData = _ItemData:GetItem(value)
		icon:GetChildByName("Ruid").SpriteGUIRendererComponent.ImageRUID = itemData["ruid"]
		local count = _UserService.LocalPlayer.PlayerInventory:ItemQuantity(value)
		if count > 999 then
			icon:GetChildByName("Count").TextComponent.Text = "999+"
		else
			icon:GetChildByName("Count").TextComponent.Text = "" .. count
		end
		icon:GetChildByName("UIText").TextComponent.Text = itemData["name"]
	end
elseif pName == "Pet" then
	local nGrid = child:GetChildByName("Grid")
	for k, v in pairs(nGrid.Children) do
		if v.Name == "" .. value then
			v.SpriteGUIRendererComponent:ChangeMaterial("material://68bca359-8e12-4688-9bcf-0c6de3c5060d")
		else
			v.SpriteGUIRendererComponent:ChangeMaterial("")
		end
	end
elseif pName == "Sound2" then
	local nGrid = child:GetChildByName("Grid")
	for k, v in pairs(nGrid.Children) do
		if v.Name == "" .. value then
			v.SpriteGUIRendererComponent:ChangeMaterial("material://68bca359-8e12-4688-9bcf-0c6de3c5060d")
		else
			v.SpriteGUIRendererComponent:ChangeMaterial("")
		end
	end
else
	child:GetChildByName("Re").TextComponent.Text = "적용값 : " .. value
end

if pName == "Alpha" then
	_PetManager:UpdateAlpha()
elseif pName == "Pet" then
	_PetManager:UpdatePet()
end
end