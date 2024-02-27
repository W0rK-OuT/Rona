return function (self) 
local nTable = {
	["LeftArrow"] = "MoveLeft",
	["RightArrow"] = "MoveRight",
	["UpArrow"] = "MoveUp",
	["DownArrow"] = "MoveDown",
	["LeftAlt"] = "Jump",
	["X"] = "Sit",
	
	["Q"] = "C-Quest",
	["E"] = "C-Equip",
	["S"] = "C-Stat",
	["I"] = "C-Inven",
	["K"] = "C-Skill",
	["Z"] = "C-Roof",
	["P"] = "C-Party",
	["D"] = "C-Drop",
	["B"] = "C-Book",
	
	["Quote"] = "C-ChatP",
	["Alpha1"] = "C-Chat0",
	["Alpha2"] = "C-Chat1",
	["Alpha3"] = "C-Chat2",
	
	["Equals"] = "C-Mobile",
	["W"] = "C-WorldMap",
	["M"] = "C-MiniMap",
	["Backslash"] = "C-KeySetting",
	["RightBracket"] = "C-QuickSlot",
	
	["LeftControl"] = "S-0",
}
return nTable
end