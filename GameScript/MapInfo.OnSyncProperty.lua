return function (self,name,value) 
if name == "mapMark" then
	_MiniMapManager:UpdateMark(value)
elseif name == "link" then
	_MiniMapManager:UpdateMiniMap(value)
end
end