return function (self,str) 
local result = {}
local stack = {}
local index = 1

for pair in str:gmatch("([^,]+") do
	local key, value = pair:match("([^=]+)=([^]+)")
	
	if key and value then
		-- 중첩된 테이블인 경우
		if value:sub(1, 1) == "[" and value:sub(-1) == "]" then
			stack[index] = result
			result = {}
			index += 1
		end
		
		stack[index][key] = value
		
		-- 중첩된 테이블 끝
		if value:sub(1, 1) == "[" and value:sub(-1) == "]" then
			local innerTable = result
			result = stack[index]
			table.remove(stack)
			result[key] = innerTable
		end
	end
end

return result
end