return function (self) 
local ruids = {
	"2c1d9184edac4ecfa606d37862b71ebd", -- 먼지
}
local func = function()
end
_ResourceService:PreloadAsync(ruids, func)
end