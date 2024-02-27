return function (self,id,oriState,state,isBase) 
if not isBase then
	state = oriState
end

local ruids = self.ruids[id]
if ruids == nil then
	ruids = self:LoadRUID(id)
end
if isBase then
	return ruids["base"][state]
else
	return ruids["hit"][state]
end
end