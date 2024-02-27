return function (self,playerInventory) 
local invParse = {}
local invName = {"0", "1", "2", "3", "4", "5"}
local invs = {playerInventory.inv0, playerInventory.inv1, playerInventory.inv2, playerInventory.inv3, playerInventory.inv4, playerInventory.inv5}
for key, inv in pairs(invs) do
	local nTable = {}
	for slot, item in pairs(inv) do
		local nItem = {}
		for itemKey, itemValue in pairs(item) do
			local num = _SaveUtil:KeyToNum(itemKey)
			if num == 0 then
				if self:IsClient() then
					_MessageLogic:DropMessage(itemKey .. " key 값이 존재하지 않습니다. 수정 작업 필요!!!")
				end
				log(item["id"] .. " " .. itemKey .. " not define !!!!!!!!!!!!!!!!!!!!!!!!!!!!")
			else

				nItem[_SaveUtil:NumToHex(num)] = itemValue
			end
		end
		nTable[slot] = nItem
	end
	invParse[invName[key]] = _HttpService:JSONEncode(nTable)
end
return _SaveUtil:TableToString(invParse)
end