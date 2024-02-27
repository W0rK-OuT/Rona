return function (self,targetText) 
---@type function(i: number):string
local GetRichTag = function (i)
if targetText:sub(i, i) ~= '<' then
	return ''
end

local originI = i

local tagResult = '<'
if targetText:sub(i + 1, i + 1) == '/' then
	tagResult = '</'
	i += 1
end

local next2char = targetText:sub(i + 1, i + 2)
if next2char == 'b>' then
	return tagResult .. 'b>'
elseif next2char == 'i>' then
	return tagResult .. 'i>'
elseif next2char == 'si' then
	if targetText:sub(i + 3, i + 4) == 'ze' then
	local nextchar = targetText:sub(i + 5, i + 5)
	if nextchar == '>' then
		return tagResult .. 'size>'
	elseif nextchar == '=' then
		local findStart, findEnd = targetText:find('>', i + 6, true)
		if findStart ~= nil then
		return targetText:sub(originI, findStart)
		end
	end
	end
elseif next2char == 'co' then
	if targetText:sub(i + 3, i + 5) == 'lor' then
	local nextchar = targetText:sub(i + 6, i + 6)
	if nextchar == '>' then
		return tagResult .. 'color>'
	elseif nextchar == '=' then
		local findStart, findEnd = targetText:find('>', i + 7, true)
		if findStart ~= nil then
		return targetText:sub(originI, findStart)
		end
	end
	end
end

return ''
end

local tagStack = {}

local findTags = {}

for i = 1, #targetText do
local richTag = GetRichTag(i)
if richTag == '' then
	continue
end

table.insert(findTags, richTag)

if richTag:sub(2, 2) == '/' then
	--richText가 아님
	if #tagStack == 0 then
	return targetText
	end
	
	--마지막으로 찾은 Tag와 다른 태그를 닫으려 하고 있음 -> richText가 아님
	local tagChar = tagStack[#tagStack]:sub(2, 2)
	if tagChar ~= richTag:sub(3, 3) then
	return targetText
	end
	
	table.remove(tagStack)
else
	table.insert(tagStack, richTag)
end
end

local resultText = targetText

for index, value in ipairs(findTags) do
local cutResult, cutIdx = resultText:gsub(value, "")
resultText = cutResult
end

return resultText
end