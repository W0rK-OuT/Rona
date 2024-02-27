return function (self,tab) 
if tab == nil then
	tab = 0
end

for k, v in pairs(self.tabs.Children) do
	if v.Name == "" .. tab then
		v.SpriteGUIRendererComponent:ChangeMaterial("material://6424f545-2069-490b-8760-ca2b6b4bcd5e")
	else
		v.SpriteGUIRendererComponent:ChangeMaterial("")
	end
end
self.tab = tab
if tab == 0 then
	self.grid:SetEnable(true)
	self.itemGrid:SetEnable(false)
else
	self.grid:SetEnable(false)
	for k, v in pairs(self.itemGrid.Children) do
		v:SetEnable(false)
	end
	local items = _Util:FindTable_All("BMItems" .. tab)
	if items ~= nil then
		local sample = self.itemGrid:GetChildByName("Sample")
		for k, v in pairs(items) do
			local itemID = tonumber(v["id"])
			local price = tonumber(v["price"])
			local quantity = _SkillStart:ConvertValue(v["quantity"], 1)
			local buyType = tonumber(v["buyType"])
			
			if buyType ~= nil and buyType > 0 then
				if buyType & 1 ~= 0 then
					if not _RateManager.rate then
						continue
					end
				elseif buyType & 2 ~= 0 then
					if _RateManager.rate then
						continue
					end
				end
			end
			
			local clone = self.itemGrid:GetChildByName("" .. k)
			if clone == nil then
				clone = sample:Clone("" .. k)
			end
			local itemData = _ItemData:GetItem(itemID)
			local itemName = itemData["name"]
			local priceName = _Util:ConvertComma(price) .. " 포인트"
			if quantity > 1 then
				priceName ..= " (" .. quantity .. "개)"
			end
			clone:GetChildByName("Icon").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, itemData["ruid"])
			clone:GetChildByName("Name").TextComponent.Text = itemName
			clone:GetChildByName("Price").TextComponent.Text = priceName
			clone:GetChildByName("code").TextComponent.Text = "" .. itemID
			clone:SetEnable(true)
		end
	end
	self.itemGrid:SetEnable(true)
end
self:CloseBuy()
end