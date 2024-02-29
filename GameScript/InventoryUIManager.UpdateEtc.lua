return function (self,tab,slot) 
if tab > 0 then
	_ShopUILogic:UpdateInventory()
	if tab == 2 and slot ~= nil then
		_PlayerKeyLogic:UpdateSlots()
		if _PlayerKeyLogic.main.Enable then
			_PlayerKeyLogic:UpdateKeySettingItemCount(0)
		end
	end
	_PetOptionManager:CheckHpMpUpdate(tab)
else
	local item = _UserService.LocalPlayer.PlayerInventory.inv0["8"] -- 신발
	local itemID = item == nil and 0 or item["id"]
	_PlayerWeather:UpdateSpike(_GameUtil:IsSpike(itemID))
end

if _CreateItemManager.main.Enable then
	_CreateItemManager:Set(tab, slot)
end

--_QuestManager:QuestUpdateValue()
end