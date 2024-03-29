return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2102,
	["lvmax"] = 10,
	["quest"] = {{["id"] = 1033, ["state"] = 2}},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 2001,
	["item"] = {{["id"] = 4031792, ["count"] = 10}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031792, ["count"] = 10}
	},
}
nTable["act1"] = {
	["exp"] = 20,
	["item"] = {
		{["id"] = 4031792, ["count"] = -10},
		{["id"] = 2022253, ["count"] = 2, ["job"] = 1}
	},
}
nTable["info"] = {
	["name"] = "맛있는 버섯사탕",
	["parent"] = "다나의 부탁",
	["order"] = 3,
	["1"] = "다나에게 센이 버섯사탕을 먹고 싶어한다고 알려 주었다. 그러자 다나는 주머니에서 버섯사탕 10개를 꺼내 센에게 전해 달라고 말했다. 그럼 #b센#k에게 가자.",
	["2"] = "버섯사탕을 받은 센은 고맙다며 사탕 중 2개를 나에게 주었다. ",
	["area"] = 20,
}
nTable["say0"] = {
	["base"] = {["1"] = "센이 뭘 먹고 싶어하던가요? 네? 센이 버섯사탕을 먹고 싶다고 했다고요? 호호. 요새 이가 상한 것 같아서 계속 못 먹게 했더니 먹고 싶어진 모양이네요. 착한 일을 했으니 이번만은 사탕을 줘야겠어요.", ["2"] = "자, 여기 버섯사탕 10개예요. 여행자님께서 가시는 길에 #b센#k에게 전해주세요. 그럼 부탁 드릴게요."},
	["no"] = {["1"] = "엣... 싫으신 건가요? 이왕 여기까지 도와주셨는데 이번 일도 마저 해주세요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "와아! 누나가 버섯사탕을 줬군요! 에헤헤. 달콤한 버섯사탕이 너무너무 먹고 싶었는데 정말 기뻐요! 전해 주셔서 감사합니다."},
	["yes"] = {["1"] = "아참. 여행자님도 드세요. 맛있는 건 나눠먹는 거라고 누나가 그랬어요."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b센#k에게는 안 가신 모양이네요? 센이 버섯사탕을 기다리고 있을 테니 조금만 서둘러 주세요."},
		["item"] = {["1"] = "우웅? #b다나#k 누나에게는 아직 안 가신 거예요? 맛있는 버섯사탕, 먹고 싶은데..."},
	},
	["ask"] = {"네에? 버섯사탕을 잃어버리셨다고요? 아아, 이런... 어디다 흘리신 거예요? 하는 수 없지... 이번만은 더 드릴 테니, 앞으론 조심해 주세요."},
}
return nTable
end