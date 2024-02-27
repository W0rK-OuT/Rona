return function (self) 
local value = self.stats.eva
local buff = self.buff.eva

if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.eva.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.eva.Text = tostring(value - buff)
end
end