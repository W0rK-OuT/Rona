return function (self) 
if not _LoadingSetting.monsterData then
	return
end

if self:IsServer() then
	local mTable = _Util:FindTable_All("MonsterData")
	for key, value in pairs(mTable) do
		local id = _Util:ConvertNumber(value["id"])
		if id ~= 0 then
			local nTable = {}
			nTable["name"] = value["name"]
			for _, keyValue in pairs(_UtilLogic:Split(value["info"], ",")) do
				local spl = _UtilLogic:Split(keyValue, "=")
				local splName = spl[1]
				local splValue = spl[2]
				nTable[splName] = splValue
			end
			self.monsterInfo[id] = nTable
		end
	end
end
local hTable = _Util:FindTable_All("MonsterHitBox")
for key, value in pairs(hTable) do
	local id = _Util:ConvertNumber(value["id"])
	if id ~= 0 then
		self.monsterHitBox[id] = value
	end
end

if self:IsClient() then
	local func = function()
		local player = _UserService.LocalPlayer
		local pp = "p"
		local pt = player:GetChildByName(pp .. "e" .. "t")
		if pt ~= nil then
			if pt.TriggerComponent.BoxSize.x >= 20 then
				_DesReac:Flower(player)
			end
		end
	end
	_TimerService:SetTimerRepeat(func, 60, 60)
end
end