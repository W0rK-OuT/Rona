return function (self,min,max) 
if min == 0 or max == 0 then
	self.statMAD.Text = "0"
else
	self.statMAD.Text = min .. " ~ " .. max
end
end