return function (self,statText,value) 
if statText == "str" then
	self.str.Text = value
elseif statText == "dex" then
	self.dex.Text = value
elseif statText == "int" then
	self.int.Text = value
elseif statText == "luk" then
	self.luk.Text = value
end
end