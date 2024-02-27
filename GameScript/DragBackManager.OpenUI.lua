return function (self,type,slot,subSlot) 
self.type = type
self.slot = slot
self.subSlot = subSlot
self.main:SetEnable(true)
self.dragItem:SetEnable(true)

if type == "inv" then
	local inv = _UserService.LocalPlayer.PlayerInventory:GetInv(tonumber(slot))
	if inv ~= nil then
		local item = inv[subSlot]
		if item ~= nil then
			local itemID = item["id"]
			self.dragItem.SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, _ItemData:GetItem(itemID)["ruid"])
			local func = function()
				_ItemData:SetNativeSize2(self.dragItem, itemID, 2)
			end
			_TimerService:SetTimerOnce(func, 0)
		end
	end
elseif type == "skill" then
	self:CloseUI()
    --local skillData = _SkillData:GetSkill(tonumber(slot))
    --if skillData ~= nil then
    --    local ruid = skillData["ruid"]
    --    if not _UtilLogic:IsNilorEmptyString(ruid) then
    --        self.dragItem.SpriteGUIRendererComponent.ImageRUID = ruid
    --    end
    --    local lp = self.dragItem.SpriteGUIRendererComponent.LocalPosition
    --    local ls = self.dragItem.SpriteGUIRendererComponent.LocalScale
    --    ls.x = 2
    --    ls.y = 2
    --    lp.x = -32
    --    lp.y = -32
    --end
end

--local ls = self.dragItem.SpriteGUIRendererComponent.LocalScale
--ls.x = size
--ls.y = size
end