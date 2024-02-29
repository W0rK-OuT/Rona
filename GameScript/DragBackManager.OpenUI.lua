return function (self,type,slot,subSlot) 
self.type = type
self.slot = slot
self.subSlot = subSlot
self.main:SetEnable(true)
self.dragItem:SetEnable(true)

local isName = false

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
    local skillData = _SkillData:GetSkill(tonumber(slot))
    if skillData ~= nil then
        local ruid = skillData["ruid"]
        if not _UtilLogic:IsNilorEmptyString(ruid) then
            self.dragItem.SpriteGUIRendererComponent.ImageRUID = ruid
        end
        local lp = self.dragItem.SpriteGUIRendererComponent.LocalPosition
        local ls = self.dragItem.SpriteGUIRendererComponent.LocalScale
        ls.x = 2
        ls.y = 2
        lp.x = -32
        lp.y = -32
    end
elseif type == "key" then
	if slot == "top" then
		_PlayerKeyLogic:SetRemoveButton(true)
	end
	
	local keyStr
	if slot == "top" then
		keyStr = _UserService.LocalPlayer.PlayerKey.mainKey[self.subSlot]
	else
		keyStr = _UserService.LocalPlayer.PlayerKey.listKey[tonumber(self.subSlot)]
	end
	if keyStr == nil then
		return
	end
	if keyStr ~= "S-0" and _UtilLogic:Contains(keyStr, "S-") then
		local skillID = tonumber(_UtilLogic:SubString(keyStr, 3))
	    local skillData = _SkillData:GetSkill(skillID)
	    if skillData ~= nil then
	        local ruid = skillData["ruid"]
	        if not _UtilLogic:IsNilorEmptyString(ruid) then
	            self.dragItem.SpriteGUIRendererComponent.ImageRUID = ruid
	        end
	        local lp = self.dragItem.SpriteGUIRendererComponent.LocalPosition
	        local ls = self.dragItem.SpriteGUIRendererComponent.LocalScale
	        ls.x = 2
	        ls.y = 2
	        lp.x = -32
	        lp.y = -32
	    end
	elseif _UtilLogic:Contains(keyStr, "I-") then
		local itemID = tonumber(_UtilLogic:SubString(keyStr, 3))
		self.dragItem.SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(itemID, _ItemData:GetItem(itemID)["ruid"])
		local func = function()
			_ItemData:SetNativeSize2(self.dragItem, itemID, 2)
		end
		_TimerService:SetTimerOnce(func, 0)
	else
		isName = true
		self.name.Text = _PlayerKeyLogic:KeyName(keyStr)
		self.dragItem.SpriteGUIRendererComponent.ImageRUID = "3e9d52ed52d64794bbd6f72bab8ee3d9"
	end
end

self.name.Enable = isName
self.gui.Enable = isName

--local ls = self.dragItem.SpriteGUIRendererComponent.LocalScale
--ls.x = size
--ls.y = size
end