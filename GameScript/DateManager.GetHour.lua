return function (self) 
local nDate = DateTime.UtcNow
local nowDate = DateTime(nDate.Elapsed + 1000 * 60 * 60 * 9)

local nHour = nowDate.Hour
return nHour
end