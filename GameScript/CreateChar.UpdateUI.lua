return function (self) 
local items = self.items
local bottom = self.clone:GetChildByName("Bottom")
local playerEntity = self.clone:GetChildByName("Player")

local genderEntity = bottom:GetChildByName("gender")
local genderNum = items["gender"]
if genderNum == 1 then
	genderEntity:GetChildByName("Desc").TextComponent.Text = "남자"
else
	genderEntity:GetChildByName("Desc").TextComponent.Text = "여자"
end

local chrItems = self:CharInfo(genderNum)
local nTable = {"top", "bot", "shoes", "weapon"}
local nTable2 = {MapleAvatarItemCategory.Coat, MapleAvatarItemCategory.Pants, MapleAvatarItemCategory.Shoes, MapleAvatarItemCategory.OneHandedWeapon}
for idx, keyName in pairs(nTable) do
	local child = bottom:GetChildByName(keyName):GetChildByName("Desc")
	local id = chrItems[keyName][items[keyName]]
	local ruid = nil
	if id == nil then
		child.TextComponent.Text = "오류"
	else
		local getItem = _ItemData:GetItem(id)
		child.TextComponent.Text = getItem["name"]
		ruid = getItem["ruid"]
	end
	playerEntity.CostumeManagerComponent:SetEquip(nTable2[idx], ruid)
end
end