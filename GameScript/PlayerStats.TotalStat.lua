return function (self,str) 
if str == "str" then
	return self.str + self.localstr
elseif str == "dex" then
	return self.dex + self.localdex
elseif str == "int" then
	return self.int + self.localint
elseif str == "luk" then
	return self.luk + self.localluk
end
end