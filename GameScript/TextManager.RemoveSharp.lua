return function (self,inputString) 
local count
inputString, count = string.gsub(inputString, "#L%d+#", "")
inputString, count = string.gsub(inputString, "#[blk]", "")
return inputString
end