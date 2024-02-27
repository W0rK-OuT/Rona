return function (self) 
local len = #self.openUI.Children
if len == 0 then
	return nil
end

for idx = len, 1, -1 do
	local entity = self.openUI.Children[idx]
    if entity.Visible then
		return entity
    end
end
return nil
end