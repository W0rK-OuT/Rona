return function (self) 
local value = self.stats.mad
local buff = self.buff.mad
if buff ~= 0 then
	local buffName = buff > 0 and "+" .. buff or "-" .. math.abs(buff)
	self.mad.Text = "<color=red>" .. value .. " (" .. (value - buff) .. buffName .. ")</color>"
else
	self.mad.Text = tostring(value - buff)
end
end