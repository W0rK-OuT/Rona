return function (self,str) 
local byte1 = string.byte(str, 1)
local byte2 = string.byte(str, 2)
local byte3 = string.byte(str, 3)

-- UTF-8 인코딩에서 한글 문자의 첫 바이트 범위는 0xE0에서 0xEF 사이
if byte1 >= 0xE0 and byte1 <= 0xEF then
-- 나머지 두 바이트의 범위는 0x80에서 0xBF 사이
	if byte2 >= 0x80 and byte2 <= 0xBF and byte3 >= 0x80 and byte3 <= 0xBF then
		return true -- 한글 문자
	end
end
return false -- 한글 문자 아님
end