return function (self,id) 
local itemType = math.floor(id / 10000)
if itemType == 100 then
	return MapleAvatarItemCategory.Cap
elseif itemType == 101 then
	return MapleAvatarItemCategory.FaceAccessory
elseif itemType == 102 then
	return MapleAvatarItemCategory.EyeAccessory
elseif itemType == 103 then
	return MapleAvatarItemCategory.EarAccessory
elseif itemType == 104 then
	return MapleAvatarItemCategory.Coat
elseif itemType == 105 then
	return MapleAvatarItemCategory.Longcoat
elseif itemType == 106 then
	return MapleAvatarItemCategory.Pants
elseif itemType == 107 then
	return MapleAvatarItemCategory.Shoes
elseif itemType == 108 then
	return MapleAvatarItemCategory.Glove
elseif itemType == 109 or itemType == 134 then
	return MapleAvatarItemCategory.SubWeapon
elseif itemType == 110 then
	return MapleAvatarItemCategory.Cape
elseif itemType >= 130 and itemType <= 139 then
	return MapleAvatarItemCategory.OneHandedWeapon
elseif itemType >= 140 and itemType <= 149 then
	return MapleAvatarItemCategory.TwoHandedWeapon
end
return nil
end