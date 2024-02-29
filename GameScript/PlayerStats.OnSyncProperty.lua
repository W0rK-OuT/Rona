return function (self,name,value) 
if name == "hp" or name == "currentHp" then
	_UserService.LocalPlayer.PlayerParty:UpdatePartyHpBar(self.hp, self.currentHp, self.Entity)
end

if self.Entity ~= _UserService.LocalPlayer then
	return
end

if name == "level" then
	local level = math.floor(value)
	_PlayerStatuUILogic:LevelUpdate(level)
	_StatUILogic:UpdateLevel(level)
	_StatUILogic:UpdateStatBlock()
	_QuestManager:AllUpdateQuest()
elseif name == "gender" then
	_StatUILogic:UpdateGender(value)
elseif name == "job" then
	local jobName = _GameUtil:JobName(value)
	_PlayerStatuUILogic:JobUpdate(jobName)
	_StatUILogic:UpdateJob(jobName)
	_SkillUIManager:UpdateSkills(value)
	_StatUILogic:UpdateStatBlock()
	_StatUILogic:UpdateAutoStatByJob(value)
	_QuestManager:AllUpdateQuest()
	_Gagebar:UpdateColor()
elseif name == "hp" or name == "currentHp" then
	_PlayerStatuUILogic:HpUpdate(self.hp, self.currentHp)
	_StatUILogic:UpdateHp(self.hp .. " / " .. self.currentHp)
	if name == "hp" then
		_PetOptionManager:AutoPotion(0, self.hp, self.currentHp)
	end
elseif name == "mp" or name == "currentMp" then
	_PlayerStatuUILogic:MpUpdate(self.mp, self.currentMp)
	_StatUILogic:UpdateMp(self.mp .. " / " .. self.currentMp)
	if name == "mp" then
		_PetOptionManager:AutoPotion(1, self.mp, self.currentMp)
	end
elseif name == "exp" then
	local needExp = _GameUtil:NeedExp(self.level)
	_PlayerStatuUILogic:ExpUpdate(value, needExp)
	_StatUILogic:UpdateExp(value .. " (" .. math.floor(value / needExp * 100) .. "%)")
elseif name == "sp" then
	_SkillUIManager:UpdateSP()
	_SkillUIManager:UpdateSkills(self.job)
elseif name == "pop" then
	_StatUILogic:UpdatePop(value)
elseif name == "meso" then
	local meso = _Util:ConvertComma(math.floor(value))
	_InventoryUIManager:MesoUpdate(meso)
	_ShopUILogic:UpdateMeso(meso)
	_QuestManager:QuestUpdateMeso()
elseif name == "str" or name == "localstr" then
	_StatUILogic:UpdateStat("str", _StatUILogic:ConvertStat(self.str, self.localstr))
elseif name == "dex" or name == "localdex" then
	_StatUILogic:UpdateStat("dex", _StatUILogic:ConvertStat(self.dex, self.localdex))
elseif name == "int" or name == "localint" then
	_StatUILogic:UpdateStat("int", _StatUILogic:ConvertStat(self.int, self.localint))
elseif name == "luk" or name == "localluk" then
	_StatUILogic:UpdateStat("luk", _StatUILogic:ConvertStat(self.luk, self.localluk))
elseif name == "ap" then
	_StatUILogic:UpdateAp(value)
elseif name == "minPADamage" or name == "maxPADamage" then
	_StatUILogic:UpdateStatPAD(self.minPADamage, self.maxPADamage)
elseif name == "minMADamage" or name == "maxMADamage" then
	_StatUILogic:UpdateStatMAD(self.minMADamage, self.maxMADamage)
elseif name == "pad" or name == "throwPAD" then
	_StatUILogic:UpdatePAD()
elseif name == "mad" then
	_StatUILogic:UpdateMAD()
elseif name == "pdd" then
	_StatUILogic:UpdatePDD()
elseif name == "mdd" then
	_StatUILogic:UpdateMDD()
elseif name == "acc" then
	_StatUILogic:UpdateACC()
elseif name == "eva" then
	_StatUILogic:UpdateEVA()
elseif name == "speed" then
	_StatUILogic:UpdateSpeed()
elseif name == "jump" then
	_StatUILogic:UpdateJump()
end

if name == "hp" then
	_DeadManager:DeadManager()
end
end