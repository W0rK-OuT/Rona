return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002100,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 22541, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1002001,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1500,
}
nTable["info"] = {
	["name"] = "책의 행방은?2",
	["area"] = 7,
	["1"] = "#p1002100#에게 책의 행방을 묻자 #b#p1002001##k 아저씨가 그 책이 필요하대서 넘겨 주었다고 한다. #p1002001# 아저씨에게 #t4161050#에 대해 물어 보자.",
	["2"] = "#p1002001# 아저씨는 그 책은 #p1012101#가 심심할 것 같아 빌린 책이라, 이미 #p1012101#에게 넘겨 주었다고 한다. #b#m100000000##k로 가서 #b#p1012101##k를 만나 보자.",
	["parent"] = "책의 행방은?",
	["order"] = 2,
}
nTable["say0"] = {
	["base"] = {["1"] = "저에게 무슨 볼 일이라도 있으신가요? 혹시 제가 만든 멋진 약이... 아니라고요? 쳇, 그럼 무슨 일이신데요? 책? 아... #t4161050# 말이군요? 그게 있으면 드래곤의 힘을 내는 약을 만들 수 있을 줄 알았는데 아니더라고요.", ["2"] = "그래서 그 책은 어쨌냐고요? 전 어차피 안 볼 책이라, #p1002001# 아저씨가 빌려 달라고 하시길래 빌려 드렸지요. 반납도 알아서 하시겠다고 했으니 아마 #p1002001# 아저씨가 가지고 있지 않을까요? #b#p1002001##k 아저씨에게 물어보세요."},
	["yes"] = {["1"] = "그런데 참 특이한 도마뱀을 기르시네요. 한 번 만져봐도... 어휴, 사나워 보이네요. 건드리면 안 되겠어요."},
	["no"] = {["1"] = "뭐예요? 별로 궁금하지도 않으면서 왜 귀찮게 꼬치꼬치 물어봐요? "},
}
nTable["say1"] = {
	["base"] = {["1"] = "으, 턱이 너무 근지럽군. 응? 자네는 이 주변에서 못 보던 얼굴인데 나에게 무슨 볼 일이라도? 한동안은 바다에 나가지 않을 생각인데.... 응? 책? 혹시 #t4161050#를 말하는 거라면 나에게 없는데...", ["2"] = "나 같은 뱃사람이 드래곤에 대해 뭐 관심이 있겠나. 내가 보려고 빌린 게 아니라, 몸이 약해 집 안에서 나가지도 못하는 #p1012101#를 위해 빌린 거야. 이미 #b#m100000000##k로 보냈으니 #b#p1012101##k가 갖고 있을 텐데. 책이 궁금하거든 #p1012101#에게 물어봐."},
	["yes"] = {["1"] = "그나저나 자네 참 이상하게 생긴 애완동물을 기르는군. 하긴, 얼마 전에는 주니어 발록을 데리고 다니는 모험가도 봤으니까. 세상에는 참 특이한 사람이 많아."},
	["stop"] = {
		["npc"] = {["1"] = "그 책이라면 벌써 #b#p1002001##k 아저씨에게 넘겼다니까요? #p1002001# 아저씨에게 물어보세요. 바로 요 옆에 계시잖아요?"},
	},
}
return nTable
end