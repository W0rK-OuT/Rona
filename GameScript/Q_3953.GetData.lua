return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2100001,
	["quest"] = {{["id"] = 3952, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2100001,
	["endscript"] = "q3953e",
	["item"] = {{["id"] = 4011008, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "무하마드 설득하기",
	["parent"] = "사막의 현상수배",
	["order"] = 2,
	["1"] = "#p2100001#에게 가서 말을 걸자 그는 #o3220001#가 몬스터니 뭐니 하는 소리는 하지도 말라고 한다. 생각보다 반발이 심한데...? 그를 설득하려면 일단 기분을 풀어줘야 할 것 같다. #p2100001#가 좋아하는 #b#t4011008# 1개#k를 구해 가져가면 어떻게든 대화를 시도해 볼 수 있지 않을까?  \n\n#i4011008##t4011008# #b#c4011008#/1",
	["2"] = "#p2100001#를 설득해 내었다! 고지식한 사람이라 힘들었지만, 어떻게든 된 것 같다. 좋아...! 이제 #p2101010#에게 가서 이 사실을 보고하자.",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "...뭔가, 자네는. 뭔가 만들고 싶은 물건이라도... 응? #o3220001#? 자네 혹시 #o3220001#가 몬스터니 뭐니 하는 이야기를 하려는 겐가...?"},
	["yes"] = {["1"] = "#o3220001#가 몬스터라니... 그게 무슨 망발인가?! 사막의 오래된 수호신을 그리 함부로 하다니...! 요즘 젊은이들이란 정말로 예의가 없어! 그런 소리 할 거면 썩 비키게! 자네와는 할 말이 없네! #b예의도 없이 빈손#k으로 와서 무슨... "},
	["no"] = {["1"] = "그럼 다행이군. 요즘 #o3220001#가 몬스터니 어쩌니 하는 쓸데없는 이야기가 많아서 심기가 영 불편하거든."},
}
nTable["say1"] = {
}
return nTable
end