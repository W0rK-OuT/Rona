return function (self,isEquip,slot,first) 
local player = _UserService.LocalPlayer
local playerInventory = player.PlayerInventory

local inv0 = playerInventory.inv0
local inv2 = playerInventory.inv2

if isEquip then
	local equipItem = inv0[slot]
	if equipItem == nil then
		return
	end
	if _UtilLogic:IsNilorEmptyString(self.scrollSlot) then
		_MessageLogic:DropMessage("선택된 주문서가 없습니다.")
		return
	end
	local findItem = inv2[self.scrollSlot]
	if findItem == nil then
		_MessageLogic:DropMessage("선택된 주문서가 없습니다.")
		return
	end
	if self:CheckEquipAndScroll(equipItem["id"], findItem["id"]) then
		self.equipSlot = slot
		self:Update()
	else
		_MessageLogic:DropMessage("선택한 아이템은 주문서랑 맞지 않습니다.")
	end
else
	local scrollItem = inv2[slot]
	if scrollItem == nil then
		return
	end
	local scrollID = scrollItem["id"]
	if not _GameUtil:IsScroll(scrollID) then
		return
	end
	local scrollItemType = math.floor(scrollID % 10000 / 100)
	
	local findSlot = ""
	if scrollItemType ~= 11 and (scrollItemType < 60 or scrollItemType == 80 or scrollItemType == 81) then
		for k, v in pairs(inv0) do
			if self:CheckEquipAndScroll(v["id"], scrollID) then
				findSlot = k
				break
			end
		end
	    if _UtilLogic:IsNilorEmptyString(findSlot) then
	        _MessageLogic:DropMessage("주문서에 해당하는 아이템을 장착 중이지 않습니다.")
	        return
	    end
	end

	if first then
		self:OpenUI()
	end
	self.equipSlot = findSlot
	
	self.scrollSlot = slot
	self:Update()
end

-- 주문서를 넣으면 자동으로 장비 변경
-- 혼돈의 주문서는 자동으로 변경 x
-- 혼돈의 주문서 + 장비는 주문서가 존재할 경우 클릭 가능
end