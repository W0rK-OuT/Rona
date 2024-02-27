return function (self) 
local nTable = {
	-- 키네임 // 좌표 x, y // 크기 x, y // visual
	{"", -50, 0, 204, 204, 0},
	{"", -300, 0, 204, 204, 0},
	
	{"", -60, 250, 140, 140, 0},
	{"", -210, 250, 140, 140, 0},
	{"", -360, 250, 140, 140, 0},
	
	{"", -60, 400, 140, 140, 0},
	{"", -210, 400, 140, 140, 0},
	{"", -360, 400, 140, 140, 0},
	
	{"", -60, 550, 140, 140, 1},
	{"", -210, 550, 140, 140, 1},
	{"", -360, 550, 140, 140, 1},
	{"", -510, 550, 140, 140, 1},
}
local ffTable = {}
for k, v in pairs(nTable) do
	local fffTalbe = {}
	for kk, vv in pairs(v) do
		fffTalbe["" .. kk] = "" .. vv
	end
	ffTable["" .. k] = fffTalbe
end
return ffTable
end