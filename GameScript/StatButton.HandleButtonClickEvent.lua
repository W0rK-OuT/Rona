return function (self,event) 
--------------- Native Event Sender Info ----------------
-- Sender: ButtonComponent
-- Space: Client
---------------------------------------------------------

-- Parameters
local Entity = event.Entity
---------------------------------------------------------
local name = Entity.Name
if name == "ExitButton" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_StatUILogic:CloseUI()
elseif name == "AutoButton" then
	_StatUILogic:OpenAutoStat(0)
elseif name == "AutoButton1" then
	_StatUILogic:OpenAutoStat(1)
elseif name == "AutoButton2" then
	_StatUILogic:OpenAutoStat(2)
elseif name == "Detail" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_StatUILogic:DeTail()
elseif name == "StrStatButton" then
	_StatUILogic:StatButtonClick("str")
elseif name == "DexStatButton" then
	_StatUILogic:StatButtonClick("dex")
elseif name == "IntStatButton" then
	_StatUILogic:StatButtonClick("int")
elseif name == "LukStatButton" then
	_StatUILogic:StatButtonClick("luk")
elseif name == "Yes" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_StatUILogic:AcceptAutoStat()
elseif name == "No" then
	_SoundService:PlaySound("69b517263dac4edb8e6f09040177c938", 1)
	_StatUILogic:CloseAtuoStat()
end
end