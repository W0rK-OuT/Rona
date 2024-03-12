return function (self) 
local start = 32 -- 처음 위치
local sizeOne = 78

local y1 = 15 -- 첫 줄
local y2 = 103
local y3 = 180
local y4 = 255
local y5 = 330
local y6 = 407

local sizeX = 74
local sizeY = 70

local keyTable = {
	{"none", "Esc", start, y1, sizeX, sizeY},
	
	{"F1", "F1", 190 + sizeOne * 0, y1, sizeX, sizeY},
	{"F2", "F2", 190 + sizeOne * 1, y1, sizeX, sizeY},
	{"F3", "F3", 190 + sizeOne * 2, y1, sizeX, sizeY},
	{"F4", "F4", 190 + sizeOne * 3, y1, sizeX, sizeY},
	
	{"F5", "F5", 520 + sizeOne * 0, y1, sizeX, sizeY},
	{"F6", "F6", 520 + sizeOne * 1, y1, sizeX, sizeY},
	{"F7", "F7", 520 + sizeOne * 2, y1, sizeX, sizeY},
	{"F8", "F8", 520 + sizeOne * 3, y1, sizeX, sizeY},
	
	{"F9", "F9", 852 + sizeOne * 0, y1, sizeX, sizeY},
	{"F10", "F10", 852 + sizeOne * 1, y1, sizeX, sizeY},
	{"F11", "F11", 852 + sizeOne * 2, y1, sizeX, sizeY},
	{"F12", "F12", 852 + sizeOne * 3, y1, sizeX, sizeY},
	
	{"none", "Psc", 1182 + sizeOne * 0, y1, sizeX, sizeY},
	{"none", "Slk", 1182 + sizeOne * 1, y1, sizeX, sizeY},
	{"none", "Brk", 1182 + sizeOne * 2, y1, sizeX, sizeY},
	
	----------------------
	
	{"BackQuote", "`", start + sizeOne * 0, y2, sizeX, sizeY},
	{"Alpha1", "1", start + sizeOne * 1, y2, sizeX, sizeY},
	{"Alpha2", "2", start + sizeOne * 2, y2, sizeX, sizeY},
	{"Alpha3", "3", start + sizeOne * 3, y2, sizeX, sizeY},
	{"Alpha4", "4", start + sizeOne * 4, y2, sizeX, sizeY},
	{"Alpha5", "5", start + sizeOne * 5, y2, sizeX, sizeY},
	{"Alpha6", "6", start + sizeOne * 6, y2, sizeX, sizeY},
	{"Alpha7", "7", start + sizeOne * 7, y2, sizeX, sizeY},
	{"Alpha8", "8", start + sizeOne * 8, y2, sizeX, sizeY},
	{"Alpha9", "9", start + sizeOne * 9, y2, sizeX, sizeY},
	{"Alpha0", "0", start + sizeOne * 10, y2, sizeX, sizeY},
	{"Minus", "-", start + sizeOne * 11, y2, sizeX, sizeY},
	{"Equals", "=", start + sizeOne * 12, y2, sizeX, sizeY},
	{"none", "Bksp", start + sizeOne * 13, y2, sizeX + 40, sizeY},
	
	{"Insert", "Ins", 1182 + sizeOne * 0, y2, sizeX, sizeY},
	{"Home", "Hm", 1182 + sizeOne * 1, y2, sizeX, sizeY},
	{"PageUp", "Pup", 1182 + sizeOne * 2, y2, sizeX, sizeY},
	
	----------------------
	
	{"none", "Tab", start, y3, sizeX + 36, sizeY},
	{"Q", "Q", start + sizeOne * 1 + 36, y3, sizeX, sizeY},
	{"W", "W", start + sizeOne * 2 + 36, y3, sizeX, sizeY},
	{"E", "E", start + sizeOne * 3 + 36, y3, sizeX, sizeY},
	{"R", "R", start + sizeOne * 4 + 36, y3, sizeX, sizeY},
	{"T", "T", start + sizeOne * 5 + 36, y3, sizeX, sizeY},
	{"Y", "Y", start + sizeOne * 6 + 36, y3, sizeX, sizeY},
	{"U", "U", start + sizeOne * 7 + 36, y3, sizeX, sizeY},
	{"I", "I", start + sizeOne * 8 + 36, y3, sizeX, sizeY},
	{"O", "O", start + sizeOne * 9 + 36, y3, sizeX, sizeY},
	{"P", "P", start + sizeOne * 10 + 36, y3, sizeX, sizeY},
	{"LeftBracket", "[", start + sizeOne * 11 + 36, y3, sizeX, sizeY},
	{"RightBracket", "]", start + sizeOne * 12 + 36, y3, sizeX, sizeY},
	{"Backslash", "／", start + sizeOne * 13 + 36, y3, sizeX, sizeY},
	
	{"Delete", "Del", 1182 + sizeOne * 0, y3, sizeX, sizeY},
	{"End", "End", 1182 + sizeOne * 1, y3, sizeX, sizeY},
	{"PageDown", "Pdn", 1182 + sizeOne * 2, y3, sizeX, sizeY},
	
	----------------------
	
	{"none", "Lock", start, y4, sizeX + 76, sizeY},
	{"A", "A", start + sizeOne * 1 + 76, y4, sizeX, sizeY},
	{"S", "S", start + sizeOne * 2 + 76, y4, sizeX, sizeY},
	{"D", "D", start + sizeOne * 3 + 76, y4, sizeX, sizeY},
	{"F", "F", start + sizeOne * 4 + 76, y4, sizeX, sizeY},
	{"G", "G", start + sizeOne * 5 + 76, y4, sizeX, sizeY},
	{"H", "H", start + sizeOne * 6 + 76, y4, sizeX, sizeY},
	{"J", "J", start + sizeOne * 7 + 76, y4, sizeX, sizeY},
	{"K", "K", start + sizeOne * 8 + 76, y4, sizeX, sizeY},
	{"L", "L", start + sizeOne * 9 + 76, y4, sizeX, sizeY},
	{"Semicolon", ";", start + sizeOne * 10 + 76, y4, sizeX, sizeY},
	{"Quote", "'", start + sizeOne * 11 + 76, y4, sizeX, sizeY},
	{"none", "Enter", start + sizeOne * 12 + 76, y4, sizeX + 40, sizeY},
	
	----------------------
	
	{"LeftShift", "Shift", start, y5, sizeX + 114, sizeY},
	{"Z", "Z", start + sizeOne * 1 + 114, y5, sizeX, sizeY},
	{"X", "X", start + sizeOne * 2 + 114, y5, sizeX, sizeY},
	{"C", "C", start + sizeOne * 3 + 114, y5, sizeX, sizeY},
	{"V", "V", start + sizeOne * 4 + 114, y5, sizeX, sizeY},
	{"B", "B", start + sizeOne * 5 + 114, y5, sizeX, sizeY},
	{"N", "N", start + sizeOne * 6 + 114, y5, sizeX, sizeY},
	{"M", "M", start + sizeOne * 7 + 114, y5, sizeX, sizeY},
	{"Comma", ",", start + sizeOne * 8 + 114, y5, sizeX, sizeY},
	{"Period", ".", start + sizeOne * 9 + 114, y5, sizeX, sizeY},
	{"Slash", "/", start + sizeOne * 10 + 114, y5, sizeX, sizeY},
	{"none", "Shift", start + sizeOne * 11 + 114, y5, sizeX + 80, sizeY},
	{"UpArrow", "▲", 1182 + sizeOne * 1, y5, sizeX, sizeY},
	----------------------
	
	{"LeftControl", "Ctrl", start, y6, sizeX + 46, sizeY},
	{"none", "", 142, y6, 114, sizeY},
	{"LeftAlt", "Alt", 262, y6, sizeX + 40, sizeY},
	{"Space", "Space", 382, y6, 382, sizeY},
	{"none", "Alt", 772, y6, 126, sizeY},
	{"none", "", 900, y6, 128, sizeY},
	{"none", "Ctrl", 1030, y6, 130, sizeY},
	
	{"LeftArrow", "◀", 1182 + sizeOne * 0, y6, sizeX, sizeY},
	{"DownArrow", "▼", 1182 + sizeOne * 1, y6, sizeX, sizeY},
	{"RightArrow", "▶", 1182 + sizeOne * 2, y6, sizeX, sizeY},
}
return keyTable
end