return function (self,text) 
local tag_map = {
    ["#r"] = "red",
    ["#b"] = "blue",
    ["#g"] = "green",
    ["#e"] = "bold",
    ["#n"] = "bold",
}

local result = ''
local open_color_tags = {} -- 열린 color 태그 추적
local bold_tags_count = 0 -- 열린 bold 태그 수 추적

local index = 1
local len = #text
while index <= len do
    local tag = string.sub(text, index, index + 1)
    if tag_map[tag] then
        if tag == "#e" then
            result = result .. '<b>'
            bold_tags_count = bold_tags_count + 1
        elseif tag == "#n" then
            if bold_tags_count > 0 then
                result = result .. '</b>'
                bold_tags_count = bold_tags_count - 1
            end
        else
            result = result .. '<color=' .. tag_map[tag] .. '>'
            table.insert(open_color_tags, tag_map[tag])
        end
        index = index + 2
    elseif tag == "#k" then
        if #open_color_tags > 0 then
            result = result .. '</color>'
            table.remove(open_color_tags)
        end
        index = index + 2
    else
        result = result .. string.sub(text, index, index)
        index = index + 1
    end
end

while #open_color_tags > 0 do
    result = result .. '</color>'
    table.remove(open_color_tags)
end

while bold_tags_count > 0 do
    result = result .. '</b>'
    bold_tags_count = bold_tags_count - 1
end

return result

--local tag_map = {
--    ["#r"] = "red",
--    ["#b"] = "blue",
--    ["#g"] = "green",
--}
--
--local result = ''
--local open_color_tags = {} -- 열린 color 태그 추적
--
--local index = 1
--while index <= #text do
--    local tag = string.sub(text, index, index + 1)
--    if tag_map[tag] then
--        result = result .. '<color=' .. tag_map[tag] .. '>'
--        table.insert(open_color_tags, tag_map[tag])
--        index = index + 2
--    elseif tag == "#k" then
--        if #open_color_tags > 0 then
--            result = result .. '</color>'
--            table.remove(open_color_tags)
--        end
--        index = index + 2
--    else
--        result = result .. string.sub(text, index, index)
--        index = index + 1
--    end
--end
--
--while #open_color_tags > 0 do
--    result = result .. '</color>'
--    table.remove(open_color_tags)
--end
--
--return result
end