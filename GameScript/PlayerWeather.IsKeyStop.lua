return function (self) 
if self.stun then
	return true
end
if self.seduce > 0 then
	return true
end
return false
end