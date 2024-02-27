return function (self) 
local grid = self.main:GetChildByName("Grid")

local questTable
if self.lastTab == 1 then
	questTable = _QuestManager.canStartQuest
elseif self.lastTab == 2 then
	questTable = _QuestManager.startedQuest
else
	questTable = _QuestManager.completeQuest
end

for k, v in pairs(grid.Children) do
    v:Destroy()
end

local nTable = {}
local sortTable = {}

for questID, _ in pairs(questTable) do
	local data = _QuestData:GetData(questID)
	local info = data["info"]
	if info == nil then
		continue
	end
	
	local name = _GameUtil:ConvertString(info["name"], "")
	local area = _GameUtil:ConvertValue(info["area"], 0)
	
	table.insert(sortTable, {questID, area, name})
	
    --local child = grid:GetChildByName("" ..area)
    --if child ~= nil then
    --    local clone = child:GetChildByName("" .. questID)
    --    if clone == nil then
    --        clone = _SpawnService:SpawnByEntity(self.sample, "" .. questID, Vector3.zero, child)
    --        clone:GetChildByName("Name").TextComponent.Text = name
    --    end
    --    clone:SetEnable(false)
    --    nTable["" .. area] = true
    --    
    --    table.insert(sortTable, {questID, area, name})
    --end
end

table.sort(sortTable, function(a, b)
	return a[2] < b[2]
end)

local categorys = {
	[6] =  "과거 잃은 영웅",
	[7] = "새로운 영웅",
	[10] = "직업",
	[15] = "시그너스 기사단",
	[20] = "메이플 아일랜드",
	[30] = "빅토리아 아일랜드",
	[33] = "엘나스 산맥 + 아쿠아로드",
	[37] = "루더스 호수",
	[41] = "리프레",
	[44] = "무릉도원 + 니할 사막",
	[46] = "시간의 신전",
	[47] = "파티퀘스트",
	[48] = "해외여행",
	[50] = "이벤트",
	[51] = "칭호",
}

for k, v in pairs(sortTable) do
	local questID = v[1]
	local area = v[2]
	local name = v[3]
	
	if nTable[area] == nil then
		nTable[area] = true
		local areaName = _GameUtil:ConvertString(categorys[area], "none")
		local spawn = _SpawnService:SpawnByEntity(self.gridSample, "" .. area, Vector3.zero, grid)
		spawn.TextComponent.Text = areaName
	end
	
	local clone = _SpawnService:SpawnByEntity(self.sample, "" .. questID, Vector3.zero, grid)
	clone.QuestChildButton.area = area
	clone:GetChildByName("Name").TextComponent.Text = name
	clone:SetEnable(false)
end


--for _, v in pairs(grid.Children) do
--    if nTable[v.Name] == nil then
--        v:SetEnable(false)
--    else
--        v:SetEnable(true)
--    end
--end
end