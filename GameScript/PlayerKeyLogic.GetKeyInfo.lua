return function (self,name) 
local keyName
local ruid
local color
local size = 24
if _UtilLogic:Contains(name, "S-") then
	keyName = ""
	local id = tonumber(string.sub(name, 3))
	if id == 0 then
		keyName = self:KeyName(name)
		ruid = "2860136c06ab075439721c027de365af"
		color = Color(187 / 255, 136 / 255, 153 / 255)
	else
		local skillData = _SkillData:GetSkill(id)
		ruid = skillData["ruid"]
		color = Color.white
	end
elseif _UtilLogic:Contains(name, "I-") then
	local itemID = tonumber(string.sub(name, 3))
	local itemData = _ItemData:GetItem(itemID)
	local count = _UserService.LocalPlayer.PlayerInventory:ItemQuantity(itemID)
	if count >= 1000 then
		keyName = "999+"
	else
		keyName = count
	end
	if Environment:IsPCPlatform() then
		size = 24
	end
	ruid = itemData["ruid"]
	color = Color.white
else
	keyName = self:KeyName(name)
	ruid = "2860136c06ab075439721c027de365af"
	color = Color(187 / 255, 136 / 255, 153 / 255)
end
local infoTable = {}
infoTable["keyName"] = keyName
infoTable["ruid"] = ruid
infoTable["color"] = color
infoTable["size"] = size
return infoTable
end