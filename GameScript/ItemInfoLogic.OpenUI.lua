return function (self,itemInfo,nOps) 
local id = itemInfo["id"]
local isEquip = id < 2000000
---@type Entity
local entity = isEquip and self.cloneEquip or self.cloneItem
local info = _ItemData:GetItem(id)
if info == nil then
	return
end

local isRand = false
local isUp = false
if nOps ~= nil then
	isRand = _GameUtil:ConvertValue(nOps["rand"], 0) > 0
	isUp = _GameUtil:ConvertValue(nOps["up"], 0) > 0
end

local name = info["name"]
local desc = info["desc"]
local ruid = info["ruid"]

local playerInfo = _UserService.LocalPlayer.PlayerStats

if isEquip then
	local equipInfo = _ItemData:GetItemInfo(id)
	local baseTotalStat = _ItemData:TotalStat(equipInfo)
	local equipTotalStat = _ItemData:TotalStat(itemInfo)
	
	local top = entity:GetChildByName("Top")
	local itemNameText = name
	local extraName = ""
	local upscroll = _GameUtil:ConvertValue(itemInfo["upscroll"], 0)
	if upscroll > 0 then
		if not _UtilLogic:IsNilorEmptyString(extraName) then
			extraName ..= " "
		end
		extraName ..= "+" .. upscroll
	end
	local itemGender = _GameUtil:ItemGender(id)
	if itemGender == 0 then
		if not _UtilLogic:IsNilorEmptyString(extraName) then
			extraName ..= " "
		end
		extraName ..= "남"
	elseif itemGender == 1 then
		if not _UtilLogic:IsNilorEmptyString(extraName) then
			extraName ..= " "
		end
		extraName ..= "여"
	end
	if not _UtilLogic:IsNilorEmptyString(extraName) then
		itemNameText ..= " (" .. extraName .. ")"
	end
	-- 아이템 색깔
	if equipTotalStat < baseTotalStat then
		itemNameText = "<color=#BBBBBBff>" .. itemNameText .. "</color>"
	else
		local gab = equipTotalStat - baseTotalStat
		if gab < 5 and upscroll > 0 then
			itemNameText = "<color=#FF8811FF>" .. itemNameText .. "</color>" -- 주황
		elseif gab >= 65 then
			itemNameText = "<color=#D9105FFF>" .. itemNameText .. "</color>" -- 빨강
		elseif gab >= 50 then
			itemNameText = "<color=#24FF6BFF>" .. itemNameText .. "</color>" -- 초록
		elseif gab >= 35 then
			itemNameText = "<color=#FFFF11FF>" .. itemNameText .. "</color>" -- 노랑
		elseif gab >= 20 then
			itemNameText = "<color=#CC66FFFF>" .. itemNameText .. "</color>" -- 보라
		elseif gab >= 5 then
			itemNameText = "<color=#55AAFFFF>" .. itemNameText .. "</color>" -- 파랑
		end
	end 
	local baseSize = 0
	local itemSpo = ""
	if _ItemData:IsOnly(equipInfo) then
		if not _UtilLogic:IsNilorEmptyString(itemSpo) then
			itemSpo ..= ", "
		end
		itemSpo ..= "고유 아이템"
	end
	if not _ItemData:CanTrade(equipInfo, itemInfo) then
		if not _UtilLogic:IsNilorEmptyString(itemSpo) then
			itemSpo ..= ", "
		end
		itemSpo ..= "교환 불가"
	end

	if not _UtilLogic:IsNilorEmptyString(itemSpo) then
		itemNameText ..= "\n<color=orange>" .. itemSpo .. "</color>"
		baseSize = 35
	end
	
	top:GetChildByName("Name").TextComponent.Text = itemNameText
	
	local mid = entity:GetChildByName("Mid")
	mid:GetChildByName("Icon"):GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = _GameUtil:EquipRUID(id, ruid)
	
	local bottom = entity:GetChildByName("Bottom")
	local optionText = bottom:GetChildByName("Option").TextComponent
	local optionStr = ""
	if id >= 1300000 and id < 1700000 then
		optionStr ..= "무기분류 : " .. _GameUtil:GetEquipTypeName(id)
	else
		optionStr ..= "장비분류 : " .. _GameUtil:GetEquipTypeName(id)
	end
	
	local textEnter = 0
	
	local reqLevel = _Util:ConvertNumber(equipInfo["reqLevel"])
	local reqSTR = _Util:ConvertNumber(equipInfo["reqSTR"])
	local reqDEX = _Util:ConvertNumber(equipInfo["reqDEX"])
	local reqINT = _Util:ConvertNumber(equipInfo["reqINT"])
	local reqLUK = _Util:ConvertNumber(equipInfo["reqLUK"])
	local reqPOP = _Util:ConvertNumber(equipInfo["reqPOP"])
	local attackspeed = _Util:ConvertNumber(equipInfo["attackSpeed"])
	
	local reqStr = ""
	local reqN = ""
	local reqValue = ""
	if playerInfo.level >= reqLevel then
		reqStr = reqStr .. "REQ LEV"
		reqN = reqN .. ":"
		reqValue = reqValue .. reqLevel
	else
		reqStr = reqStr .. "<color=red>REQ LEV</color>"
		reqN = reqN .. "<color=red>:</color>"
		reqValue = reqValue .. "<color=red>" .. reqLevel .. "</color>"
	end
	if playerInfo:TotalStat("str") >= reqSTR then
		reqStr = reqStr .. "\nREQ STR"
		reqN = reqN .. "\n:"
		reqValue = reqValue .. "\n" .. reqSTR
	else
		reqStr = reqStr .. "\n<color=red>REQ STR</color>"
		reqN = reqN .. "\n<color=red>:</color>"
		reqValue = reqValue .. "\n<color=red>" .. reqSTR .. "</color>"
	end
	if playerInfo:TotalStat("dex") >= reqDEX then
		reqStr = reqStr .. "\nREQ DEX"
		reqN = reqN .. "\n:"
		reqValue = reqValue .. "\n" .. reqDEX
	else
		reqStr = reqStr .. "\n<color=red>REQ DEX</color>"
		reqN = reqN .. "\n<color=red>:</color>"
		reqValue = reqValue .. "\n<color=red>" .. reqDEX .. "</color>"
	end
	if playerInfo:TotalStat("int") >= reqINT then
		reqStr = reqStr .. "\nREQ INT"
		reqN = reqN .. "\n:"
		reqValue = reqValue .. "\n" .. reqINT
	else
		reqStr = reqStr .. "\n<color=red>REQ INT</color>"
		reqN = reqN .. "\n<color=red>:</color>"
		reqValue = reqValue .. "\n<color=red>" .. reqINT .. "</color>"
	end
	if playerInfo:TotalStat("luk") >= reqLUK then
		reqStr = reqStr .. "\nREQ LUK"
		reqN = reqN .. "\n:"
		reqValue = reqValue .. "\n" .. reqLUK
	else
		reqStr = reqStr .. "\n<color=red>REQ LUK</color>"
		reqN = reqN .. "\n<color=red>:</color>"
		reqValue = reqValue .. "\n<color=red>" .. reqLUK .. "</color>"
	end
	if reqPOP == 0 or playerInfo.pop >= reqPOP then
		reqStr = reqStr .. "\nREQ POP"
		reqN = reqN .. "\n:"
		if reqPOP == 0 then
			reqPOP = "-"
		end
		reqValue = reqValue .. "\n" .. reqPOP
	else
		reqStr = reqStr .. "\n<color=red>REQ POP</color>"
		reqN = reqN .. "\n<color=red>:</color>"
		if reqPOP == 0 then
			reqPOP = "-"
		end
		reqValue = reqValue .. "\n<color=red>" .. reqPOP .. "</color>"
	end
	mid:GetChildByName("Req").TextComponent.Text = reqStr
	mid:GetChildByName("ReqN").TextComponent.Text = reqN
	mid:GetChildByName("ReqValue").TextComponent.Text = reqValue
	
	local reqJob = _Util:ConvertNumber(equipInfo["reqJob"])
	local jobStr = ""
	local jobTable = {
		{0, "초보자"},
		{1, "전사"},
		{2, "마법사"},
		{3, "궁수"},
		{4, "도적"},
		{5, "해적"},
	}
	for key, value in pairs(jobTable) do
		if _GameUtil:ReqJob(value[1], reqJob) then
			jobStr ..= value[2] .. "  "
		else
			jobStr ..= "<color=red>" .. value[2] .. "</color>  "
		end
	end
	mid:GetChildByName("Job").TextComponent.Text = _UtilLogic:TrimEnd(jobStr, "  ")

	if _GameUtil:IsWeapon(id) then
		optionStr ..= "\n공격속도 : " .. _GameUtil:WeaponSpeedName(attackspeed)
		textEnter += 1
	end
	
	local optionTable = {
		{"incSTR", "STR : +%s"},
		{"incDEX", "DEX : +%s"},
		{"incINT", "INT : +%s"},
		{"incLUK", "LUK : +%s"},
		{"incMHP", "HP : +%s"},
		{"incMMP", "MP : +%s"},
		{"incPAD", "공격력 : +%s"},
		{"incMAD", "마력 : +%s"},
		{"incPDD", "물리방어력 : +%s"},
		{"incMDD", "마법방어력 : +%s"},
		{"incACC", "명중률 : +%s"},
		{"incEVA", "회피율 : +%s"},
		{"incSpeed", "이동속도 : +%s"},
		{"incJump", "점프력 : +%s"},
		--{"tuc", "업그레이드 가능 횟수 : %s"},
	}
	for key, value in pairs(optionTable) do
		local opValue = _Util:ConvertNumber(itemInfo[value[1]])
		local oriValue = _GameUtil:ConvertValue(equipInfo[value[1]], 0)
		if _UtilLogic:Contains(value[1], "inc") then
			if opValue > 0 or oriValue > 0 then
				local gabValue = opValue - oriValue
				if gabValue == 0 then
					if isRand then
						if isUp then
							optionStr ..= "\n" .. string.format(value[2], opValue .. " ~ " .. opValue + math.min(5, math.floor(opValue / 10) + 1) .. "")
						else
							local randUP = math.min(5, math.floor(opValue / 10) + 1)
							optionStr ..= "\n" .. string.format(value[2], math.max(0, opValue - randUP) .. " ~ " .. opValue + randUP .. "")
						end
					else
						optionStr ..= "\n" .. string.format(value[2], opValue)
					end
				elseif gabValue > 0 then
					optionStr ..= "\n" .. string.format(value[2], opValue .. " (" .. oriValue .. "+" .. gabValue .. ")")
				else
					optionStr ..= "\n" .. string.format(value[2], opValue .. " (" .. oriValue .. gabValue .. ")")
				end
				textEnter += 1
			end
		else
			optionStr ..= "\n" .. string.format(value[2], opValue)
			textEnter += 1
		end
	end
	
	local knockback = _GameUtil:ConvertValue(equipInfo["knockback"], 0)
	if knockback > 0 then
		optionStr = optionStr .. "\n" .. string.format("직접 타격시 %s%%의 확률로 넉백", knockback)
		textEnter = textEnter + 1
	end
	
	local upgrade = _GameUtil:ConvertValue(itemInfo["upgrade"], -1)
	if upgrade >= 0 then
		optionStr = optionStr .. "\n" .. string.format("업그레이드 가능 횟수 : %s", upgrade)
		textEnter = textEnter + 1
	else
		local tuc = _GameUtil:ConvertValue(equipInfo["tuc"], 0)
		if tuc > 0 then
			optionStr = optionStr .. "\n" .. string.format("업그레이드 가능 횟수 : %s", tuc)
			textEnter = textEnter + 1
		end
	end	
	optionText.Text = optionStr

	-- desc 코딩
	
	mid.UITransformComponent.anchoredPosition.y = -(50 + baseSize)
	bottom.UITransformComponent.anchoredPosition.y = -(430 + baseSize)
	
	--entity.UITransformComponent.WorldPosition = pos
	entity.UITransformComponent.RectSize = Vector2(self.sizeX, baseSize + self.sizeY + textEnter * 38)
else
	local equipInfo = _ItemData:GetItemInfo(id)
	local reqLevel = _GameUtil:ConvertValue(equipInfo["reqLevel"], 0)
	
	if reqLevel > 0 then
		if playerInfo.level >= reqLevel then
			desc = "<size=18>REQ LEV : " .. reqLevel .. "</size>\n" .. desc
		else
			desc = "<size=18><color=red>REQ LEV : " .. reqLevel .. "</color></size>\n" .. desc
		end
	end
	
	local baseSize = 0
	local itemSpo = ""
	if _ItemData:IsOnly(equipInfo) then
		if not _UtilLogic:IsNilorEmptyString(itemSpo) then
			itemSpo ..= ", "
		end
		itemSpo ..= "고유 아이템"
	end
	if not _ItemData:CanTrade(equipInfo, itemInfo) then
		if not _UtilLogic:IsNilorEmptyString(itemSpo) then
			itemSpo ..= ", "
		end
		itemSpo ..= "교환 불가"
	end

	if not _UtilLogic:IsNilorEmptyString(itemSpo) then
		itemSpo = "\n<color=orange>" .. itemSpo .. "</color>"
		baseSize = 35
	end
	
	local mid = entity:GetChildByName("Mid")
	mid.UITransformComponent.anchoredPosition.y = -baseSize
	
	entity:GetChildByName("Name").TextComponent.Text = name .. itemSpo
	
	local descEntity = mid:GetChildByName("Desc")
	local descCom = descEntity.TextComponent
	descCom.Text = desc
	
	local y = descCom:GetPreferredHeight(desc, descEntity.UITransformComponent.RectSize.x)
	mid:GetChildByName("Icon"):GetChildByName("ruid").SpriteGUIRendererComponent.ImageRUID = ruid
	
	entity.UITransformComponent.RectSize.y = math.max(200, math.ceil(45 + y) + 10) + 35 + baseSize
	--entity.UITransformComponent.WorldPosition = pos
end

entity:SetEnable(true)
_UIManager:Add(entity)
self:CloseOne(not isEquip)

_DragManager:SetCalcPos(entity, Vector2(0, 0))

--_ItemInfoLogic:CloseUI()
_SkillInfoLogic:CloseUI()
_BaseTextManager:CloseUI()
end