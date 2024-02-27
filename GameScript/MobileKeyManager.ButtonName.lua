return function (self,index) 
if index < 1 or index > self.maxCount then
	return "XXX"
end
local nTable = {
	"LeftAlt", "LeftControl", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", -- 12
	"Alpha1", "Alpha2", "Alpha3", "Alpha4", "Alpha5", "Alpha6", "Alpha7", "Alpha8", "Alpha9", -- 9
}
return nTable[index]
end