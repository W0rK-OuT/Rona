return function (self,str,player) 
--local nTable = {
--    ["#b"] = "<color=blue>",
--    ["#r"] = "<color=red>",
--    ["#g"] = "<color=green>",
--    ["#k"] = "</color>",
--}
--
--for key, value in pairs(nTable) do
--    str = _UtilLogic:Replace(str, key, value)
--end

if str == nil then
	return ""
end

while _UtilLogic:Contains(str, "#h") do
	local first, _ = string.find(str, "#h")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	
	str = _UtilLogic:Replace(str, findStr, player.PlayerComponent.Nickname)
end

while _UtilLogic:Contains(str, "#p") do
	local first, _ = string.find(str, "#p")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	local stringData = _NpcData:NpcInfo(findCode)
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★엔피시 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, stringData["name"])
	end
end

while _UtilLogic:Contains(str, "#q") do
	local first, _ = string.find(str, "#q")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	local stringData = _SkillData:GetName(findCode)
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★스킬 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, stringData)
	end
end

while _UtilLogic:Contains(str, "#o") do
	local first, _ = string.find(str, "#o")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	local stringData = _MonsterData:GetMonsterName(findCode)
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★몬스터 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, stringData)
	end
end

while _UtilLogic:Contains(str, "#t") do
	local first, _ = string.find(str, "#t")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCodePr = string.sub(findStr, 3, #findStr - 1)
	
	local findCode 
	if _UtilLogic:Contains(findCodePr, ":") then
		findCode = tonumber(string.sub(findStr, 3, #findStr - 2))
	else
		findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	end
	
	local stringData = _ItemData:GetItem(findCode)["name"]
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★아이템 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, stringData)
	end
end

while _UtilLogic:Contains(str, "#z") do
	local first, _ = string.find(str, "#z")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCodePr = string.sub(findStr, 3, #findStr - 1)
	
	local findCode 
	if _UtilLogic:Contains(findCodePr, ":") then
		findCode = tonumber(string.sub(findStr, 3, #findStr - 2))
	else
		findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	end
	
	local stringData = _ItemData:GetItem(findCode)["name"]
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★아이템 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, stringData)
	end
end

while _UtilLogic:Contains(str, "#i") do
	local first, _ = string.find(str, "#i")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCodePr = string.sub(findStr, 3, #findStr - 1)
	
	local findCode 
	if _UtilLogic:Contains(findCodePr, ":") then
		findCode = tonumber(string.sub(findStr, 3, #findStr - 2))
	else
		findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	end
	
	str = _UtilLogic:Replace(str, findStr, "") -- 임시 제거
end

while _UtilLogic:Contains(str, "#v") do
	local first, _ = string.find(str, "#v")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCodePr = string.sub(findStr, 3, #findStr - 1)
	
	local findCode
	if _UtilLogic:Contains(findCodePr, ":") then
		findCode = tonumber(string.sub(findStr, 3, #findStr - 2))
	else
		findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	end
	
	str = _UtilLogic:Replace(str, findStr, "") -- 임시 제거
end

while _UtilLogic:Contains(str, "#c") do
	local first, _ = string.find(str, "#c")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))

	str = _UtilLogic:Replace(str, findStr, tostring(player.PlayerInventory:ItemQuantity(findCode)))
end

while _UtilLogic:Contains(str, "#y") do
	local first, _ = string.find(str, "#y")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))

	str = _UtilLogic:Replace(str, findStr, _QuestData:GetName(findCode))
end

while _UtilLogic:Contains(str, "#u") do
	local first, _ = string.find(str, "#u")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	
	local status = player.PlayerQuest:QuestStatus(findCode)

	str = _UtilLogic:Replace(str, findStr, status == 0 and "시작안함" or status == 1 and "진행중" or "완료")
end

while _UtilLogic:Contains(str, "#a") do
	local first, _ = string.find(str, "#a")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	
	local length = #findStr
	local findCode = tonumber(string.sub(findStr, 3, length - 2))
	local findIndex = tonumber(string.sub(findStr, length - 1, length - 1))
	
	str = _UtilLogic:Replace(str, findStr, player.PlayerQuest:GetMobKill(findCode, findIndex) .. " / " .. _QuestData:GetMobCount(findCode, findIndex))
end

while _UtilLogic:Contains(str, "#m") do
	local first, _ = string.find(str, "#m")
	local _, second = string.find(str, "#", first + 1)
	if second == nil then
		second = -1
	end
	local findStr = string.sub(str, first, second)
	local findCode = tonumber(string.sub(findStr, 3, #findStr - 1))
	local stringData = _MapData:GetMapName(findCode)
	if stringData == nil then
		str = _UtilLogic:Replace(str, findStr, "★맵 텍스트변환 에러★")
	else
		str = _UtilLogic:Replace(str, findStr, _GameUtil:ConvertString(stringData["mapName"], "★존재하지 않는 맵★"))
	end
end

return self:NewColor(str)
end