return function (self,slot) 
local player = _UserService.LocalPlayer
local tab = self.tab
local inv = player.PlayerInventory:GetInv(tab)
local item = inv[slot]
if item == nil then
	return
end
if not player.PlayerStats:IsActing() then
	_MessageLogic:DropMessage("죽은 상태에선 행동이 불가능합니다.")
	return
end
if _PlayerWeather:IsPotionStop() then
	return
end

local itemID = item["id"]

if tab == 1 then
	local result = _EquipmentLogic:CanEquip(player, item["id"])
	if result == 6 then
		_MessageLogic:DropMessage("착용 가능한 성별이 아니라서 선택된 아이템을 장착할 수 없습니다.")
		return
	elseif result == 7 then
		_MessageLogic:DropMessage("블레이드류 무기는 듀얼블레이드 직업군만 장착할 수 있습니다.")
		return
	elseif result > 0 then
		_MessageLogic:DropMessage("현재 능력치가 낮아서 선택된 아이템을\n장착할 수 없습니다.")
		return
	end
	if self.lastSlot == slot then
		self.lastTab = 0
		self.lastSlot = ""
		self:Highlight()
	end
	player.PlayerInventory:EquipItem(slot)
elseif tab == 2 then
	if _ScrollManager.main.Enable then
		if self.tab == 2 then
			_ScrollManager:SetSlot(false, slot, false)
		end
		self:SetLastClick("")
		return
	end
	if _GameUtil:IsScroll(itemID) then
		_ScrollManager:SetSlot(false, slot, true)
	elseif itemID < 2030000 then
		if player.PlayerBuff.darkSight > 0 then
			return
		end
		_UseItem:UseSlot(player, itemID, slot)
	else
		_UseItem:UseSlot(player, itemID, slot)
	end
elseif tab == 5 then
	_UseCash:UseAction(itemID, slot)
end
end