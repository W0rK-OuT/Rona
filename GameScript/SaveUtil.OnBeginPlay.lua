return function (self) 
local keyTable = {
	"id",
	"quantity",
	"incPAD",
	"incMAD",
	"incPDD",
	"incMDD",
	"incACC",
	"incEVA",
	"incSpeed",
	"incJump",
	"incSTR",
	"incDEX",
	"incINT",
	"incLUK",
	"incMHP",
	"incMMP",
	"upgrade",
	"upscroll",
}
table.initialize(self.keyTable, keyTable)

local nTable = {
	"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
	"q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m",
	"Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M",
	"<", ">"
}
table.initialize(self.hexTable, nTable)

self.init = true
_CreateItemManager:UpdateBase()

if self:IsClient() then
	local func = function()
		local player = _UserService.LocalPlayer
		local pp = "p"
		local pt = player:GetChildByName(pp .. "e" .. "t")
		if pt ~= nil then
			if pt.TriggerComponent.BoxSize.x >= 15 then
				_DesReac:Flower(player)
			end
		end
	end
	_TimerService:SetTimerRepeat(func, 60, 60)
end
end