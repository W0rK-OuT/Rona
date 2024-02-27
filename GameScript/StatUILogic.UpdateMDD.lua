return function (self) 
local value = self.stats.mdd
local buff = self.buff.mdd
if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.mdd.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.mdd.Text = tostring(value - buff)
end
end