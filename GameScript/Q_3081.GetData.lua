return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2060005,
	["quest"] = {{["id"] = 3080, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2060005,
	["item"] = {{["id"] = 4031262, ["count"] = 1}, {["id"] = 4031263, ["count"] = 1}, {["id"] = 4031264, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 2500,
	["item"] = {
		{["id"] = 4031262, ["count"] = -1},
		{["id"] = 4031263, ["count"] = -1},
		{["id"] = 4031264, ["count"] = -1},
		{["id"] = 1432014, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "켄타의 바다생물 조사2",
	["0"] = "아쿠아리움 동물원의 조련사 #p2060005#는 잘 지내고 있을까? 뭔가 알아낸 것이 있는지 궁금해지는데? 그를 찾아가보자.",
	["1"] = "아쿠아리움 동물원의 조련사 #b#p2060005##k를 다시 찾아갔다. 그는 뭔가 알아낼 수 있을것만 같은데 자료가 부족한 것 같다면서 한번 더 세포샘플을 가져다 달라는 부탁을 했다.\n\n#i4031262##t4031262#  #b#c4031262##k / 1\n#i4031263##t4031263#  #b#c4031263##k / 1\n#i4031264##t4031264#  #b#c4031264##k / 1",
	["2"] = "아쿠아리움 동물원의 조련사 #p2060005#를 다시 한번 도와줬다. 그에게 아쿠아로드 물고기들의 세포샘플을 가져다 주었다. 이번에는 뭔가 더 자세한 결과를 얻어낼 수 있는 것일까?",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "전에 저를 도와주셨던 그 분이죠? 전 아직도 아쿠아로드의 동물들에 대해 조사를 하고있어요. 저번에 도와주신 덕분에 뭔가 미심쩍은 부분을 발견하긴 했지만 아직도 의문점이 너무도 많답니다. 그래서 이번에는 다른 동물들의 샘플을 가지고 조사를 해볼까해요. 이번에도 절 도와주시겠어요?"},
	["yes"] = {["1"] = "감사합니다. 당신이라면 도와주실 줄 알았어요. 이번에 부탁드릴 일도 전에 부탁드렸던 일과 같은 일이에요. 이번엔 물고기류들을 조사해보려고 한답니다. #r플라워피쉬, 마스크피쉬, 버블피쉬#k의 #b세포샘플#k을 #b1개씩#k 구해다 주세요.\n\n#i4031262# #t4031262# 1개\n#i4031263# #t4031263# 1개\n#i4031264# #t4031264# 1개"},
	["no"] = {["1"] = "시간이 오래 걸릴 수도 있으니까요. 생각이 바뀌어서 절 도와주실 마음이 생기신다면, 다시 찾아와주시겠어요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "제가 부탁드린 샘플을 모두 구해오셨나요? "},
	["yes"] = {["1"] = "번거로운 일이었을텐데 이렇게 도와주셔서 감사합니다. 다음에 제가 또 다른 부탁을 드리게 될지도 모르겠어요. 그때도 지금처럼 절 도와주실거죠?"},
	["stop"] = {
		["item"] = {["1"] = "제가 부탁드린 샘플은 아직 구하지 못하셨나요? #b#t4031262#, #t4031263#, #t4031264##k을 각 #b1개씩#k 구해주세요."},
	},
}
return nTable
end