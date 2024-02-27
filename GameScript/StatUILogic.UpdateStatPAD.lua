return function (self,min,max) 
if min == 0 or max == 0 then
	self.statPAD.Text = "0"
else
	self.statPAD.Text = min .. " ~ " .. max
end
end