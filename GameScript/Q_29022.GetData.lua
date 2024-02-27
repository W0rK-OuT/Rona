return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1300000,
	["infoNumber"] = 2311,
	["lvmin"] = 30,
	["infoex"] = {"1"},
}
nTable["check1"] = {
	["npc"] = 1300000,
	["infoNumber"] = 2311,
	["infoex"] = {"1"},
	["quest"] = {{["id"] = 2312, ["state"] = 2}, {["id"] = 2313, ["state"] = 2}, {["id"] = 2314, ["state"] = 2}, {["id"] = 2315, ["state"] = 2}, {["id"] = 2316, ["state"] = 2}, {["id"] = 2317, ["state"] = 2}, {["id"] = 2318, ["state"] = 2}, {["id"] = 2319, ["state"] = 2}, {["id"] = 2320, ["state"] = 2}, {["id"] = 2321, ["state"] = 2}, {["id"] = 2322, ["state"] = 2}, {["id"] = 2323, ["state"] = 2}, {["id"] = 2324, ["state"] = 2}, {["id"] = 2325, ["state"] = 2}, {["id"] = 2326, ["state"] = 2}, {["id"] = 2327, ["state"] = 2}, {["id"] = 2328, ["state"] = 2}, {["id"] = 2329, ["state"] = 2}, {["id"] = 2330, ["state"] = 2}, {["id"] = 2331, ["state"] = 2}, {["id"] = 2332, ["state"] = 2}, {["id"] = 2333, ["state"] = 2}, {["id"] = 2334, ["state"] = 2}, {["id"] = 2335, ["state"] = 2}, {["id"] = 2336, ["state"] = 2}, {["id"] = 2337, ["state"] = 2}, {["id"] = 2342, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 10000,
	["item"] = {
		{["id"] = 1142188, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "칭호 - 버섯왕국의 수호자",
	["area"] = 51,
	["medalCategory"] = 1,
	["viewMedalItem"] = 1142188,
	["0"] = "버섯왕국의 문제를 해결하고 머쉬킹의 딸 비올레타 공주를 구하면 머쉬킹이 수여하는 #b<버섯왕국의 수호자>#k칭호를 얻을 수 있다고 하는데...",
	["1"] = "버섯왕국의 문제를 해결하고 머쉬킹의 딸 비올레타 공주를 구하면 머쉬킹이 수여하는 #b<버섯왕국의 수호자>#k칭호를 얻을 수 있다고 하는데...\n\n#y2312# #b (#u2312#)#k\n#y2313# #b (#u2313#)#k\n#y2314# #b (#u2314#)#k\n#y2315# #b (#u2315#)#k\n#y2316# #b (#u2316#)#k\n#y2317# #b (#u2317#)#k\n#y2318# #b (#u2318#)#k\n#y2319# #b (#u2319#)#k\n#y2320# #b (#u2320#)#k\n#y2321# #b (#u2321#)#k\n#y2322# #b (#u2322#)#k\n#y2323# #b (#u2323#)#k\n#y2324# #b (#u2324#)#k\n#y2325# #b (#u2325#)#k\n#y2326# #b (#u2326#)#k\n#y2327# #b (#u2327#)#k\n#y2328# #b (#u2328#)#k\n#y2329# #b (#u2329#)#k\n#y2330# #b (#u2330#)#k\n#y2331# #b (#u2331#)#k\n#y2332# #b (#u2332#)#k\n#y2333# #b (#u2333#)#k\n#y2334# #b (#u2334#)#k\n#y2335# #b (#u2335#)#k\n#y2336# #b (#u2336#)#k\n#y2337# #b (#u2337#)#k\n#y2342# #b (#u2342#)#k\r\n",
	["2"] = "버섯왕국의 문제를 해결하고 머쉬킹의 딸 비올레타 공주를 구하면 머쉬킹이 수여하는 #b<버섯왕국의 수호자>#k칭호 수여받았다.",
	["rewardSummary"] = "경험치 10,000\r\n#Wbasic#\r\n#i1142188:# #t1142188:# 1 개\r\n",
}
nTable["say0"] = {
	["base"] = {["1"] = "콜록...콜록... 그대에 대해서는 경호대장에게 들었네. 전직관의 추천을 받아 우리를 도와주러 왔다지? 제발 내 딸 비올레타를 구해주게... 이 무능력한 아비가 딸을 지켜내지 못했으니...이 얼마나 원통한 일인가...내 딸만 구해준다면 그대에게 #b<버섯왕국의 수호자>#k칭호를 수여하겠네."},
	["yes"] = {["1"] = "아...나의 비올레타..."},
	["no"] = {["1"] = "명예로운 칭호에 관심이 없다는 건가...아니면 그대에게는 우리의 슬픔은 보잘것 없다는 의미인가...콜록..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "우리 왕국을 어려움으로부터 구해줘서 고맙네. 그대의 활약상은 대신들을 통해서 익히 들어왔다네. 그대야말로 진정한 수호자라 할 수 있지. 그대를 #b<버섯왕국의 수호자>#k로 임명하겠네."},
	["stop"] = {
		["default"] = {["1"] = "우리 왕국의 문제를 해결해 준다면 #b<버섯왕국의 수호자>#k칭호를 수여하겠네."},
		["quest"] = {["1"] = "우리 왕국의 문제를 해결해 준다면 #b<버섯왕국의 수호자>#k칭호를 수여하겠네."},
	},
}
return nTable
end