return function (self,gender) 
if gender == 1 then
	local nTable = {
		["top"] = {1040002, 1040006, 1040010},
		["bot"] = {1060002, 1060006},
		["shoes"] = {1072001, 1072005, 1072037, 1072038},
		["weapon"] = {1302000, 1322005, 1312004},
	}
	return nTable
else
	local nTable = {
		["top"] = {1041002, 1041006, 1041010, 1041011},
		["bot"] = {1061002, 1061008},
		["shoes"] = {1072001, 1072005, 1072037, 1072038},
		["weapon"] = {1302000, 1322005, 1312004},
	}
	return nTable
end
end