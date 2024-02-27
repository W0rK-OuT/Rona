return function (self,infoType,info) 
if info == nil then
	self.itemGrid:SetEnable(false)
	self.main:GetChildByName("PlayerStat").TextComponent.Text = ""
	self.userID = ""
	
	self.main:GetChildByName("LEVEL").TextComponent.Text = ""
	self.main:GetChildByName("JOB").TextComponent.Text = ""
	self.main:GetChildByName("POP").TextComponent.Text = ""
	self.main:GetChildByName("GENDER").TextComponent.Text = ""
	self.main:GetChildByName("ID").TextComponent.Text = ""
	self.main:GetChildByName("NAME").TextComponent.Text = ""

	self.main:GetChildByName("Mask"):GetChildByName("Char"):SetEnable(false)

	self:ClearInputText()
else
	local level = info["level"]
	if level ~= nil then
		self.main:GetChildByName("LEVEL").TextComponent.Text = "" .. level
	end
	local job = info["job"]
	if job ~= nil then
		self.main:GetChildByName("JOB").TextComponent.Text = "" .. job
	end
	local pop = info["pop"]
	if pop ~= nil then
		self.main:GetChildByName("POP").TextComponent.Text = "" .. pop
	end
	local gender = info["gender"]
	if gender ~= nil then
		self.main:GetChildByName("GENDER").TextComponent.Text = "" .. gender
	end
	local id = info["id"]
	if id ~= nil then
		self.userID = id
		self.main:GetChildByName("ID").TextComponent.Text = "" .. id

		local char = self.main:GetChildByName("Mask"):GetChildByName("Char")
		char.CostumeManagerComponent.DefaultEquipUserId = id
		char:SetEnable(true)
	end
	local name = info["name"]
	if name ~= nil then
		self.main:GetChildByName("NAME").TextComponent.Text = "" .. name
	end
	local text = info["text"]
	if text ~= nil then
		_MessageLogic:DropMessage(text)
	end
	local stat = info["stat"]
	if stat ~= nil then
		self.main:GetChildByName("PlayerStat").TextComponent.Text = stat
	end
	
	local nItems = {}
	local equip = info["equip"]
	if not _UtilLogic:IsNilorEmptyString(equip) then
		local is = _HttpService:JSONDecode(equip)
		local items = {}
		for _, v in pairs(is) do
			table.insert(items, v)
		end
		
	    table.sort(items,
	        function(a, b)
	            return tonumber(a["id"]) < tonumber(b["id"])
	        end
	    )
		
		local sample = self.itemGrid:GetChildByName("Sample")
		local index = 1
		for k, v in pairs(items) do
			nItems["" .. index] = true
			local clone = self.itemGrid:GetChildByName("" .. index)
			if clone == nil then
				clone = sample:Clone("" .. index)
			end
			local itemID = v["id"]
			local itemData = _ItemData:GetItem(itemID)
			
			local ruidEntity = clone:GetChildByName("ruid")
			ruidEntity.SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, itemData["ruid"])
			_ItemData:SetNativeSize(ruidEntity, itemID)

			clone:GetChildByName("Name").TextComponent.Text = itemData["name"]
			local reqLevel = _GameUtil:ConvertValue(_ItemData:GetItemInfo(itemID)["reqLevel"], 0)
			clone:GetChildByName("Level").TextComponent.Text = "" .. reqLevel
			
			clone:GetChildByName("option").TextComponent.Text = _HttpService:JSONEncode(v)
			clone:SetEnable(true)
			
			index += 1
		end
		for k, v in pairs(self.itemGrid.Children) do
			if nItems[v.Name] == nil then
				v:SetEnable(false)
			end
		end
		self.itemGrid:SetEnable(true)
	end
end
end