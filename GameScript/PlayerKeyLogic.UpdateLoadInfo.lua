return function (self) 
local list = {}
local player = _UserService.LocalPlayer
if self.tab == 0 then
	local job = player.PlayerStats.job
	local jobType = _GameUtil:JobType(job)
	local job1 = math.floor(job / 100) * 100
	local job2 = job1 + job % 100 - job % 10
	
	for key, value in pairs(player.PlayerSkill.skills) do
		local nKey = "S-" .. key
		local skillID = tonumber(key)
		if _SkillInfo:IsActive(skillID) and not player.PlayerKey:FindValue(nKey) then
			local skillType = math.floor(skillID / 10000)
			if skillType == 0 or skillType == job1 or (skillType >= job2 and skillType <= job) then
				table.insert(list, nKey)
			end
		end
	end
elseif self.tab == 1 then
	for key, value in pairs(player.PlayerInventory.inv2) do
		local itemID = value["id"]
		if _GameUtil:IsUseItem(itemID) then
			local nKey = "I-" .. itemID
			if not player.PlayerKey:FindValue(nKey) then
				table.insert(list, nKey)
			end
		end 
	end
end

local grid = self.loadMain:GetChildByName("Grid")
for key, value in pairs(grid.Children) do
	value:SetEnable(false)
end

for key, value in pairs(list) do	
	local clone = grid:GetChildByName(value)
	if clone == nil then
		clone = self.gridSample:Clone(value)
	end
	local id = tonumber(string.sub(value, 3))
	local ruid
	if _UtilLogic:Contains(value, "S-") then
		ruid = _SkillData:GetSkill(id)["ruid"]
	else
		ruid = _ItemData:GetItem(id)["ruid"]
	end
	clone:GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = ruid
	clone:SetEnable(true)
end
end