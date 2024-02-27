return function (self) 
local value = self.stats.pdd
local buff = self.buff.pdd
if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.pdd.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.pdd.Text = tostring(value - buff)
end
end