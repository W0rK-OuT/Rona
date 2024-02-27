return function (self) 
local chars = self.main:GetChildByName("Chars")
local sample = chars:GetChildByName("Sample")
sample:SetEnable(false)

for idx = 1, self.showCount do
	local clone = chars:GetChildByName("Char" .. idx)
	if clone == nil then
		clone = sample:Clone("Char" .. idx)
		clone.UITransformComponent.anchoredPosition.x = -500 + 250 * idx
		clone:GetChildByName("Light"):SetEnable(false)
		clone:GetChildByName("Char"):SetEnable(false)
		clone:GetChildByName("Char2"):SetEnable(false)
	end
end

local nTable
if _UtilLogic:IsNilorEmptyString(self.loadData) then
	nTable = {}
else
	nTable = _HttpService:JSONDecode(self.loadData)
end

for idx = 1, self.showCount do
	local clone = chars:GetChildByName("Char" .. idx)
	if clone == nil then
		continue
	end
	
	local char = idx + self.showIndex * self.showCount - 1
	if char >= self.maxCount then
		if clone.Enable then
			clone:SetEnable(false)
		end
	else
		if not clone.Enable then
			clone:SetEnable(true)
		end
	end
	
	local light = clone:GetChildByName("Light")
	local char1 = clone:GetChildByName("Char")
	local cahr2 = clone:GetChildByName("Char2")
	local infoUI = clone:GetChildByName("Info")
	
	local charInfo = nTable[tostring(char)]
	if charInfo == nil then
		char1:SetEnable(true)
		cahr2:SetEnable(false)
		
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Cap, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Longcoat, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Glove, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Shoes, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Cape, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.OneHandedWeapon, "")
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.TwoHandedWeapon, "")
		
		cahr2:GetChildByName("Name").TextComponent.Text = ""
	else		
		char1:SetEnable(false)
		cahr2:SetEnable(true)
		
		local level = _GameUtil:ConvertValue(charInfo["level"], 0)
		local job = _GameUtil:ConvertValue(charInfo["job"], 0)
		local jobType = _GameUtil:JobType(job)
		local caps = {"1e9a8e362fa54f67a280ad35d1e78557", "1548a4f5e515456a84b466d866f9d1db" , "b69deecec4bd434a91adc9483a31173e", "74c68e10e9d449b69d7dd3785e6d6042", "b699cd800a694e2faebf5e7ce78860d2"}
		local clothes = {"6cadc72275ae429eb3e1ac5493428a35", "e86656c2b9704c8bbb128e0551f33557" , "11587251a5624be4b1b86bc40e4364a0", "96de625a4c10477d83bf3184b374caa1", "cee98a407139404791aa365a7f89012d"}
		local gloves = {"bf443c66cf37476fbe007a47a444bcd8", "b16b721c2b814a1f8cfa88c78ecc2636" , "1e45d70f228d4ba28b8f3d90352943aa", "8b4f4215d5c74462b35a10330be8cac8", "35f64f0d0ba740e2b329d70b780cd853"}
		local shoes = {"f6029c9d6d95450d9282de9b5b13dcd7", "0409718bb9ad438fb23ec4e3bdefa4ae" , "eae4a562c0bf40b994bbc4261b34003b", "c90d1dffdb8549c8bbca11e3f642eb4a", "2a74e3554c954a1f93419052f3098277"}
		
		local cap = caps[jobType]
		local clothe = clothes[jobType]
		local glove = gloves[jobType]
		local shoe = shoes[jobType]
		local cape = "f1442b006a98492eaac8351237943a7c" -- 타임리스
		if jobType < 1 or jobType > 5 then
			cape = "f27c5430124b4e8bad88384d798d9ca9"
		end
		
		if cap == nil then
			cap = "6677de2269a84f73bac822d9a0592508"
		end
		if clothe == nil then
			clothe = "f5d967ec4245432aa06e09ea9957543d"
		end
		if glove == nil then
			glove = "67f6cb796b844e049ec631bdd5d152de"
		end
		if shoe == nil then
			shoe = "99a7238d07e449f8b71804e7d18aee47"
		end
		
		local oneHand
		local twoHand
		if jobType == 1 then
			if job < 120 then
				twoHand = "dbb074dfc25042739b79a05f99b822fa"
			elseif job < 130 then
				twoHand = "09addd8191114f0b8193677aa02ac73f"
			else
				twoHand = "164067c82a8347d681cf49a8be3db5df"
			end
		elseif jobType == 2 then
			if job < 220 then
				oneHand = "9886e1456d9c4c32b477589666abc2e4"
			else
				oneHand = "d9ec0e6b97ea45ba8f646a4504a7ec2d"
			end
		elseif jobType == 3 then
			if job < 320 then
				twoHand = "9e8fe977ff9540d180f3f08dc420d087"
			else
				twoHand = "24bd03c3d62c4006aaf79811589165b9"
			end
		elseif jobType == 4 then
			if job < 420 then
				twoHand = "11f2459e6754491b86f6c4f6fdc0a7ba"
			else
				oneHand = "f92581fab54046409597afb2b1543ca9"
			end
		elseif jobType == 5 then
			if job < 520 then
				twoHand = "6d247ec63a42493aadf1b7fa704d3039"
			else
				twoHand = "c1d5d9a7685a4a608f8abeaafb0df8a9"
			end
		else
			twoHand = "a86b685ebf3b48ca9dc0cc4ae9ab10d6" -- 냉참
		end
		
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Cap, cap)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Longcoat, clothe)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Glove, glove)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Shoes, shoe)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.Cape, cape)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.OneHandedWeapon, oneHand)
		cahr2.CostumeManagerComponent:SetEquip(MapleAvatarItemCategory.TwoHandedWeapon, twoHand)
		
		cahr2:GetChildByName("Name").TextComponent.Text = "Lv. " .. level .. "\n" .. _GameUtil:JobName(job)
	end
	local check = false
	if self.selectIndex == idx then
		light:SetEnable(true)
		light.SpriteGUIRendererComponent.ImageRUID = ""
		light.SpriteGUIRendererComponent.ImageRUID = "96fd748e0271484f8e91051af7fbab0c"
		clone:GetChildByName("Char2"):SendEvent(StateChangeEvent("MOVE", "STAND"))
		
		if charInfo ~= nil then
			local level = _GameUtil:ConvertValue(charInfo["level"], 0)
			local job = _GameUtil:ConvertValue(charInfo["job"], 0)
			
			if not infoUI.Enable then
				infoUI.SpriteGUIRendererComponent.ImageRUID = ""
				infoUI.SpriteGUIRendererComponent.ImageRUID = "13705384354d4888a3bcb270e99fc779"
				
				_TimerService:ClearTimer(self._T.timer)
				local func = function()
					infoUI:GetChildByName("Job").TextComponent.Text = _GameUtil:JobName(job)
					infoUI:GetChildByName("Level").TextComponent.Text = tostring(level)
				end
				self._T.timer = _TimerService:SetTimerOnce(func, 0.2)
				
				_SoundService:PlaySound("65d65a35260b45cd85b122300273754e", 1)
			end
			
			infoUI:SetEnable(true)
			check = true
		end
	else
		light:SetEnable(false)
		clone:GetChildByName("Char2"):SendEvent(StateChangeEvent("IDLE", "MOVE"))
	end
	
	if not check then
		infoUI:GetChildByName("Job").TextComponent.Text = ""
		infoUI:GetChildByName("Level").TextComponent.Text = ""
		infoUI:SetEnable(false)
	end
end
end