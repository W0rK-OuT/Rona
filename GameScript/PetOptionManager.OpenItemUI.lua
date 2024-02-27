return function (self) 
local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(2)
local items = {}

for k, v in pairs(inv) do
	local itemID = tonumber(v["id"])
	if itemID < 2030000 then
		items[itemID] = true
	end
end

local grid = self.itemMain:GetChildByName("Grid")

for k, v in pairs(grid.Children) do
	if v.Name ~= "Sample" then
		v:Destroy()
	end
end

--local nTable = {}
--nTable["Sample"] = true

local index = 1
for k, _ in pairs(items) do
	local id = k
	
	local check = false
	local spec = _ItemData:GetSpec(id)
	if self.itemType == "Hp" then
		local hp = _SkillStart:ConvertValue(spec["hp"], 0)
		local hpR = _SkillStart:ConvertValue(spec["hpR"], 0)
		if hp > 0 or hpR > 0 then
			check = true
		end
	elseif self.itemType == "Mp" then
		local mp = _SkillStart:ConvertValue(spec["mp"], 0)
		local mpR = _SkillStart:ConvertValue(spec["mpR"], 0)
		if mp > 0 or mpR > 0 then
			check = true
		end
	end
	
	if check then
		local clone = grid:GetChildByName("" .. index)
		if clone == nil then
			clone = self.itemSample:Clone("" .. index)
		end
		local itemData = _ItemData:GetItem(id)
		clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = itemData["ruid"]
		clone:GetChildByName("name").TextComponent.Text = itemData["name"]
		clone:GetChildByName("code").TextComponent.Text = "" .. id
		
        --nTable["" .. index] = true
		index += 1
	end
end

--for k, v in pairs(grid.Children) do
--    if nTable[v.Name] == nil then
--        v:SetEnable(false)
--    end
--end

self.itemMain:SetEnable(true)
end