return function (self,keyName) 
local nTable = {
	{"MoveLeft", "◀"},
	{"MoveRight", "▶"},
	{"MoveUp", "▲"},
	{"MoveDown", "▼"},
	{"Jump", "점프"},
	{"Sit", "앉기"},
	
	{"S-0", "공격"},
	
	{"C-Quest", "퀘스트"},
	{"C-Equip", "장비"},
	{"C-Stat", "능력치"},
	{"C-Inven", "아이템"},
	{"C-Skill", "스킬"},
	{"C-Roof", "줍기"},
	{"C-Party", "파티"},
	{"C-Drop", "드랍"},
	{"C-Book", "몬스\n터북"},
	{"C-Mobile", "모바일"},
	{"C-WorldMap", "월드맵"},
	{"C-MiniMap", "미니맵"},
	{"C-KeySetting", "키설정"},
	{"C-QuickSlot", "퀵슬롯"},
	
	{"C-ChatP", "채팅+"},
	{"C-Chat0", "전체\n채팅"},
	{"C-Chat1", "맵\n채팅"},
	{"C-Chat2", "파티\n채팅"},
}
for key, value in pairs(nTable) do
	if value[1] == keyName then
		return value[2]
	end
end
return "???"
end