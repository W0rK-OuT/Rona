return function (self,input) 
local result, count = string.gsub(input, "<[^>]+>", "")
return result
end