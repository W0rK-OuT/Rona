return function (self) 
local ruids = {
	"1df9df84074a47a89d70ef8243ca988f", -- 초록 보라
	"2730ca6754904de19b85a836e1b5ce02", -- 초록 보라
	"328092851d34404d946999b69e04b879", -- 번개
	"8c63017c3e0641fda3f40791aab76a2d", -- 포골 area
}
local func = function()
end
_ResourceService:PreloadAsync(ruids, func)
end