return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1103002,
	["lvmin"] = 16,
	["quest"] = {{["id"] = 20710, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1103002,
	["item"] = {{["id"] = 4032137, ["count"] = 30}},
	["mob"] = {
		[1] = {["id"] = 1210103, ["count"] = 100}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2200,
	["item"] = {
		{["id"] = 4032137, ["count"] = -30}
	},
}
nTable["info"] = {
	["name"] = "가짜 인형",
	["0"] = "#m103000000# 지역 정보원 #b#p1103002##k가 새로운 정보를 얻은 모양인데...",
	["1"] = "#p1103002#는 휴지통 안에 있던 인형은 가짜라며, 진짜 인형은 이미 #o1210103#들이 흡수해 버린 것 같다고 말했다. 그러니 #r#o1210103##k을 #r100마리#k 퇴치하고 #b#t4032137# #b30개#k를 구해오라는데...\n\n#o1210103##r #a207111##k \n#i4032137# #t4032137# #b#c4032137# / 30#k",
	["2"] = "#o1210103#을 퇴치하고 #t4032137#을 구해 #p1103002#에게 가져다 주었다. ",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "조사해 보니 휴지통 안에 있던 인형은 가짜였어! 진짜 인형은 이미 #o1210103#들이 흡수해 버린 모양이야! 네가 #o1210103#을 퇴치하고 #t4032137#을 회수해 줘야겠어. 물론 할 수 있겠지?"},
	["yes"] = {["1"] = "#r#o1210103##k을 한 #r100마리#k 잡고 #o1210103#에게서 나온 #b#t4032137##k을 #b30개#k 정도 가져와줘. 그 정도 숫자면 진짜 인형이 분명 섞여 있겠지."},
	["no"] = {["1"] = "뭐야? 못 하겠다는 거야? #p1101002#한테 바로 보고서 보내?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o1210103#을 퇴치하고 인형을 가져왔군... 좋아. 그럼 조사해 볼까...?"},
	["yes"] = {["1"] = "...그런데 이렇게 보니 인형이 정말 많군. 이래서야 진짜를 어느 세월에 찾는다... 인형을 찾고 있을 테니 넌... 흠. 한 #b레벨 17#k이 되면 다시 찾아와."},
	["stop"] = {
		["npc"] = {["1"] = "#r#o1210103# 100마리#k를 퇴치하고 #b#t4032137##k을 #b30개#k 정도 가져와줘. 그 정도 숫자면 진짜 하나쯤은 섞여 있겠지. 모르겠으면 일단 힘으로 해결하는 거야."},
		["item"] = {["1"] = "#r#o1210103# 100마리#k를 퇴치하고 #b#t4032137##k을 #b30개#k 정도 가져와줘. 그 정도 숫자면 진짜 하나쯤은 섞여 있겠지. 모르겠으면 일단 힘으로 해결하는 거야."},
	},
}
return nTable
end