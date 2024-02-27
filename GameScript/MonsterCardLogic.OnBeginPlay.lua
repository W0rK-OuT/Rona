return function (self) 
self.main:SetEnable(false)
_UIManager:Remove(self.main)

self.grid = self.main:GetChildByName("Grid")
self.sample = self.grid:GetChildByName("Sample")

self.sample:SetEnable(false)

for idx = 0, 8 do 
	self.cards[idx] = {}
end

for _, v in pairs(_Util:FindTable_All("ConsumeData")) do
	local id = _GameUtil:ConvertValue(v["id"], 0)
	
	if _GameUtil:IsCard(id) then
		local cardID = id % 10000
		local cardType = math.floor(cardID / 1000)
		
		table.insert(self.cards[cardType], cardID)
	end
end
end