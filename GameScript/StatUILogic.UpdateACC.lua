return function (self) 
local value = self.stats.acc
local buff = self.buff.acc

if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.acc.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.acc.Text = tostring(value - buff)
end
end