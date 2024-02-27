return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101000,
	["lvmin"] = 38,
	["quest"] = {{["id"] = 3900, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101010,
	["quest"] = {{["id"] = 3937, ["state"] = 2}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "모래그림단의 현상수배",
	["parent"] = "사막의 현상수배",
	["order"] = 1,
	["0"] = "#b#m260000000##k의 #b#p2101000##k이 어떤 소문을 들었다는데...",
	["1"] = "사막을 위협하는 선인장 몬스터 #r#o3220001##k! #o3220001#를 막기 위해 #b모래그림단#k에서 현상금을 걸었다고 한다. 모래그림단이라고? 자세한 이야기를 묻자 #p2101000#은 딴청을 피우며 더 알고 싶으면 #b모래그림단의 단장#k에게 직접 물어보라는데... 모래그림단이라... 흠... ",
	["2"] = "모래그림단의 단장, #p2101010#를 만났다. #p2101010#는 위험한 #o3220001#를 내버려둘 수 없어 현상금을 걸었지만 한 가지 문제가 있다는데... 사막의 사람들 중 어떤 사람들은 #o3220001#를 몬스터가 아닌 사막의 수호신으로 여겨 퇴치를 반대하고 있다고 것이다. 그러니 일단 그들의 대표인 #p2100001#를 설득해 달라는데... ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "춤을 보고 싶은 거라면 공연 시간까지 기다려. ...흠. 표정을 보아하니 목적이 춤이 아닌 모양이네. 너도 그 소문이 궁금해서 찾아온 거야?"},
	["yes"] = {["1"] = "이런이런~ 이 #p2101000#님의 춤이 이렇게 인기가 없다니... 뭐, 어쩔 수 없지. 그럼 그 소문에 대해 이야기해 줄게. 그저 소문이지만 모험가라면 귀가 솔깃하겠지? ...#r#o3220001##k에게 현상금을 걸었대.", ["2"] = "뭐? #o3220001#가 뭐냐고? 정말 몰라? 사막의 공포, 카투스의 지배자, 버닝로드에서 가장 강한 몬스터잖아! 그런 것도 모르다니... 바이런에게 #m260000000#에 대해 좀 배워두는 게 좋겠다. 흠흠... 아무튼!", ["3"] = "#o3220001#에게 현상금이 걸렸어. 금액도 만만치 않은 모양이야. 게다가... (소근소근) #m260000000#의 비밀조직, #b모래그림단#k에 대한 이야기는 한번쯤 들어봤겠지? 그쪽에서 나온 이야기이니 틀림없는 것 같아.", ["4"] = "...뭐? 더 자세히 이야기해 달라고? 흠. 이 이상은 네가 직접 알아봐. 모래그림단에 대한 이야기라, 더 이상은 모르니까 말이야. 더 알고 싶으면 #b모래그림단의 단장#k이라도 찾으면 되겠지."},
	["no"] = {["1"] = "엥? 그럼 왜 찾아온 거야? 춤도 소문도 목적이 아니면... 너 혹시 이 #p2101000#님의 팬인 거니?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "아, #h0# 자네인가? 무슨 일이지...? 응? 현상수배...? 아, #o3220001#에 건 현상금 말이군. 자네도 #p2101000#에게 소문을 들은 모양이지? 소문이 맞네. 모래그림단에서 #o3220001#에게 현상금을 걸었지.", ["2"] = "#o3220001#는 사막을 어지럽히는 위험한 몬스터네. 버닝로드를 여행하는 상단이 몇 번이고 피해를 입었지만 왕과 왕비는 이 일에 조금도 신경 쓰지 않아. 그러니 모래그림단에서 나설 수밖에.", ["3"] = "하지만 이번 일은 모래그림단에서 드러내놓고 하기 어려워, 이렇게 현상수배라는 방법을 사용하게 되었지... 왜냐고? 그게 말일세..."},
	["yes"] = {["1"] = "#o3220001#는 아주 나이 많은 #o2100104#가 진화한 몬스터인지. 그런 만큼 아주 영리해. 심지어 마법까지 쓸 줄 아니까. 그래서인지 이 몬스터를 사막의 수호신이라고 여기는 사람들이 있다네. 어리석어 보이지만, 의외로 적지 않은 수야. ", ["2"] = "함부로 #o3220001#를 퇴치했다간, 모래그림단이 그 사람들에게 미움을 받게 될거야. 그러니 대놓고 퇴치하긴 애매해. 일단은 먼저 그런 사람들을 설득해야 할 것 같은데... 자네가 이 일을 맡아주지 않겠나?", ["3"] = "#o3220001#를 사막의 수호신이라고 믿는 사람의 대표는 아이템 제작자인 #b#p2100001##k 영감이라네. #t4011008#만큼이나 딱딱하고 고집센 사람이지. 일단 그 사람만 #b설득#k하면 어떻게든 퇴치해도 괜찮을 것 같아.", ["4"] = "설득은 쉽지 않을 걸세. #b리튬#k을 선물해야 말을 들어주지 않을까?... 아, 설득할 때 주의점을 일러주지. 그처럼 완고한 사람과 대화할땐 #b최대한 다른 화제로 이야기를 돌리면서, 분위기를 이끌다가 나중에 못박아 설득#k하도록 하게."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b모래그림단#k과 제대로 연락하지 못한 것 같네. 모래그림단은 비밀집단이야. 그들과 대화하고 싶다면, #b그들 안에 들어가는 수#k밖에 없지. 아직도 모르겠어?"},
	},
}
return nTable
end