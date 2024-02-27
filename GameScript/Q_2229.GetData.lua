return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1040001,
	["lvmin"] = 23,
}
nTable["check1"] = {
	["npc"] = 1040001,
	["item"] = {{["id"] = 2000000, ["count"] = 1}, {["id"] = 2000001, ["count"] = 1}, {["id"] = 2000002, ["count"] = 1}, {["id"] = 2000003, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1700,
	["item"] = {
		{["id"] = 2000000, ["count"] = -1},
		{["id"] = 2000001, ["count"] = -1},
		{["id"] = 2000002, ["count"] = -1},
		{["id"] = 2000003, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "졸음을 쫓는 방법",
	["0"] = "#b#m106000300##k에 있는 #b#p1040001##k를 찾아가자.",
	["1"] = "#b#p1040001##k를 만났다. #b#p1040001##k는 졸음이 밀려와 제대로 던전 입구를 지킬 수 없다고 한다. 이대로라면 언젠가 큰일이 벌어질 게 뻔하다. 졸음을 쫓아낼 수 있는 약물들을 가져와 #b#p1040001##k에게 먹여 보는 것이 좋겠다..\n\n#i02000000##t02000000# #b#c02000000#/1\n#k#i02000001##t02000001# #b#c02000001#/1\n#k#i02000002##t02000002# #b#c02000002#/1\n#k#i02000003##t02000003# #b#c02000003#/1",
	["2"] = "#b#p1040001##k에게 물약을 먹여 보았지만 별 소용이 없었다. 하지만 #b#p1040001##k는 노력해준 나에게 아주 고마워하고 있다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "...쿨. 헛, 이런! 내가 또 졸았나? 요즘은 너무 졸려서 일하기가 힘들군. 그렇게 이상하게 쳐다보지 말게. 자네는 이해하기 어렵겠지만 여긴 햇볕도 너무 따스해서... ", ["2"] = "나도 이제는 그만 졸고 이곳을 잘 지키고 싶지만 도대체 졸음을 쫓을 방법이 없어서 큰일이야. 혹시 자네가 해결해 줄 수 있겠나?"},
	["yes"] = {["1"] = "언젠가 #b#p1022000##k 님께서는 몸과 정신이 건강하면 잠도 이겨낼 수 있다고 말씀하셨지. 뭔가 몸에 좋은 것을 먹어야 할 것 같긴 한데 정확히 뭘 먹어야 할지는 잘 모른다는 것이 문제야. ", ["2"] = "자네가 판단해서 효과가 있을 것 같은 것들을 가져와 보게. 훌륭한 모험가라면 어떤 것이 효과가 좋을지는 잘 알고 있을 것이라 믿네."},
	["no"] = {["1"] = "저런, 자네 눈에는 던전 입구가 보이지 않는가? 나는 이 입구를 지켜야 하는 신성한 의무가 있네. 내가 졸면 이 무서운 곳에 누가 함부로 들어가려 할지도 모르는데 그래도 괜찮은가?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "...쿨. 헛! 아, 자네 왔군! 자네 정말 대단한 모험가인가 보지? 이렇게 빨리 해결하러 돌아오다니. 일단 물약을 하나씩 줘 보게. 내가 하나씩 먹어 보다 보면 분명히 효과가 있는 것이 있을 것이야."},
	["yes"] = {["1"] = "하나씩 다 먹어 봤는데... 큰 효과는 없는 것 같군. 그래도 날 위해서 이렇게 노력해 준 것만은 내가 잊지 않겠네. 그리고 혹시 또 모르는 일이야... ", ["2"] = "조금 더 있으면 효과가 나타날지도 모르지. 원래 약이란 것은 그렇게 빨리 효과가 나타나는 게 아니질 않은가? 응? 원래 먹자마자 바로 치료가 된다고? 크하하! 자네도 참, 그런 게임 같은 일이 일어날 리가 없지 않은가?"},
	["stop"] = {
		["item"] = {["1"] = "...쿨. 헛, 이런! 내가 또 졸다니. 자네, 아직 물약을 구하지 못했나?"},
	},
}
return nTable
end