return function (self) 
local value = self.stats.pad + self.stats.throwPAD
local buff = self.buff.pad

if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.pad.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.pad.Text = tostring(value - buff)
end
end