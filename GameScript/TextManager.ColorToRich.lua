return function (self,text) 
local tag_map = {
	["#r"] = "red",
	["#b"] = "blue",
	["#d"] = "navy",
	["#k"] = "black",
	["#g"] = "green",
}

local result = ''
local search_index = 1
local current_color_tag = nil

while search_index <= #text do
	local tag_found = false
	for tag, color_name in pairs(tag_map) do
		if string.sub(text, search_index, search_index + #tag - 1) == tag then
			tag_found = true
			if current_color_tag then
				result = result .. '</color>'
			end
			result = result .. '<color=' .. color_name .. '>'
			current_color_tag = color_name
			search_index = search_index + #tag
			break
		end
	end

	if not tag_found then
		local _, next_tag_pos = string.find(text, "#k", search_index, true)
		if current_color_tag and next_tag_pos and next_tag_pos < search_index then
			result = result .. '</color>'
			current_color_tag = nil
			search_index = next_tag_pos + 3
		else
			result = result .. string.sub(text, search_index, search_index)
			search_index = search_index + 1
		end
	end
end

if current_color_tag then
	result = result .. '</color>'
end

return result
end