return function (self,size,start,sizeOne,sizeTwo) 
local keyTable = {
	{"none", "Esc", 55, 55, size, size},
	
	{"F1", "F1", start + sizeOne + sizeTwo, 55, size, size},
	{"F2", "F2", start + sizeOne * 2 + sizeTwo, 55, size, size},
	{"F3", "F3", start + sizeOne * 3 + sizeTwo, 55, size, size},
	{"F4", "F4", start + sizeOne * 4 + sizeTwo, 55, size, size},
	
	{"F5", "F5", start + sizeOne * 5 + sizeTwo * 2, 55, size, size},
	{"F6", "F6", start + sizeOne * 6 + sizeTwo * 2, 55, size, size},
	{"F7", "F7", start + sizeOne * 7 + sizeTwo * 2, 55, size, size},
	{"F8", "F8", start + sizeOne * 8 + sizeTwo * 2, 55, size, size},
	
	{"F9", "F9", start + sizeOne * 9 + sizeTwo * 3, 55, size, size},
	{"F10", "F10", start + sizeOne * 10 + sizeTwo * 3, 55, size, size},
	{"F11", "F11", start + sizeOne * 11 + sizeTwo * 3, 55, size, size},
	{"F12", "F12", start + sizeOne * 12 + sizeTwo * 3, 55, size, size},
	
	{"none", "Psc", start + sizeOne * 13 + sizeTwo * 4, 55, size, size},
	{"none", "Slk", start + sizeOne * 14 + sizeTwo * 4, 55, size, size},
	{"none", "Brk", start + sizeOne * 15 + sizeTwo * 4, 55, size, size},
	
	----------------------
	
	{"BackQuote", "`", 55, 155, size, size},
	{"Alpha1", "1", start + sizeOne, 155, size, size},
	{"Alpha2", "2", start + sizeOne * 2, 155, size, size},
	{"Alpha3", "3", start + sizeOne * 3, 155, size, size},
	{"Alpha4", "4", start + sizeOne * 4, 155, size, size},
	{"Alpha5", "5", start + sizeOne * 5, 155, size, size},
	{"Alpha6", "6", start + sizeOne * 6, 155, size, size},
	{"Alpha7", "7", start + sizeOne * 7, 155, size, size},
	{"Alpha8", "8", start + sizeOne * 8, 155, size, size},
	{"Alpha9", "9", start + sizeOne * 9, 155, size, size},
	{"Alpha0", "0", start + sizeOne * 10, 155, size, size},
	{"Minus", "-", start + sizeOne * 11, 155, size, size},
	{"Equals", "=", start + sizeOne * 12, 155, size, size},
	{"none", "Bksp", start + sizeOne * 13 + 10, 155, size + 20, size},
	
	{"Insert", "Ins", start + sizeOne * 14 + 10 + sizeTwo, 155, size, size},
	{"Home", "Hm", start + sizeOne * 15 + 10 + sizeTwo, 155, size, size},
	{"PageUp", "Pup", start + sizeOne * 16 + 10 + sizeTwo, 155, size, size},
	
	----------------------
	
	{"none", "Tab", 55 + 10, 235, size + 20, size},
	{"Q", "Q", start + sizeOne + 20, 235, size, size},
	{"W", "W", start + sizeOne * 2 + 20, 235, size, size},
	{"E", "E", start + sizeOne * 3 + 20, 235, size, size},
	{"R", "R", start + sizeOne * 4 + 20, 235, size, size},
	{"T", "T", start + sizeOne * 5 + 20, 235, size, size},
	{"Y", "Y", start + sizeOne * 6 + 20, 235, size, size},
	{"U", "U", start + sizeOne * 7 + 20, 235, size, size},
	{"I", "I", start + sizeOne * 8 + 20, 235, size, size},
	{"O", "O", start + sizeOne * 9 + 20, 235, size, size},
	{"P", "P", start + sizeOne * 10 + 20, 235, size, size},
	{"LeftBracket", "[", start + sizeOne * 11 + 20, 235, size, size},
	{"RightBracket", "]", start + sizeOne * 12 + 20, 235, size, size},
	{"Backslash", "／", start + sizeOne * 13 + 20, 235, size, size},
	
	{"Delete", "Del", start + sizeOne * 14 + 10 + sizeTwo, 235, size, size},
	{"End", "End", start + sizeOne * 15 + 10 + sizeTwo, 235, size, size},
	{"PageDown", "Pdn", start + sizeOne * 16 + 10 + sizeTwo, 235, size, size},
	
	----------------------
	
	{"none", "Lock", 55 + 30, 315, size + 60, size},
	{"A", "A", start + sizeOne + 60, 315, size, size},
	{"S", "S", start + sizeOne * 2 + 60, 315, size, size},
	{"D", "D", start + sizeOne * 3 + 60, 315, size, size},
	{"F", "F", start + sizeOne * 4 + 60, 315, size, size},
	{"G", "G", start + sizeOne * 5 + 60, 315, size, size},
	{"H", "H", start + sizeOne * 6 + 60, 315, size, size},
	{"J", "J", start + sizeOne * 7 + 60, 315, size, size},
	{"K", "K", start + sizeOne * 8 + 60, 315, size, size},
	{"L", "L", start + sizeOne * 9 + 60, 315, size, size},
	{"Semicolon", ";", start + sizeOne * 10 + 60, 315, size, size},
	{"Quote", "'", start + sizeOne * 11 + 60, 315, size, size},
	{"none", "Enter", start + sizeOne * 12 + 80, 315, size + 40, size},
	
	----------------------
	
	{"LeftShift", "Shift", 55 + 40, 395, size + 80, size},
	{"Z", "Z", start + sizeOne + 80, 395, size, size},
	{"X", "X", start + sizeOne * 2 + 80, 395, size, size},
	{"C", "C", start + sizeOne * 3 + 80, 395, size, size},
	{"V", "V", start + sizeOne * 4 + 80, 395, size, size},
	{"B", "B", start + sizeOne * 5 + 80, 395, size, size},
	{"N", "N", start + sizeOne * 6 + 80, 395, size, size},
	{"M", "M", start + sizeOne * 7 + 80, 395, size, size},
	{"Comma", ",", start + sizeOne * 8 + 80, 395, size, size},
	{"Period", ".", start + sizeOne * 9 + 80, 395, size, size},
	{"Slash", "/", start + sizeOne * 10 + 80, 395, size, size},
	{"none", "Shift", start + sizeOne * 11 + 130, 395, size + 100, size},
	{"UpArrow", "▲", start + sizeOne * 15 + 10 + sizeTwo, 395, size, size},
	----------------------
	
	{"LeftControl", "Ctrl", 55 + 30, 475, size + 60, size},
	{"none", "", start + sizeOne + 90, 475, size + 60, size},
	{"LeftAlt", "Alt", start + sizeOne * 2 + 150, 475, size + 60, size},
	{"Space", "Space", 585, 475, size + 220, size},
	{"none", "Alt", 805, 475, size + 60, size},
	{"none", "", 945, 475, size + 60, size},
	{"none", "Ctrl", 1085, 475, size + 60, size},
	
	{"LeftArrow", "◀", start + sizeOne * 13 + sizeTwo * 4, 475, size, size},
	{"DownArrow", "▼", start + sizeOne * 14 + sizeTwo * 4, 475, size, size},
	{"RightArrow", "▶", start + sizeOne * 15 + sizeTwo * 4, 475, size, size},
}
return keyTable
end