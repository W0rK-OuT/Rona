return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101007,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 20200, ["state"] = 2}},
	["job"] = {1500},
}
nTable["check1"] = {
	["npc"] = 1101007,
	["endscript"] = "q20205e",
	["item"] = {{["id"] = 4032100, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "스트라이커의 기사등급시험",
	["0"] = "#p1101002#의 말에 따르면 번개의 기사단장 #b#p1101007##k에게 기사등급시험을 받을 수 있다고 한다. 에레브로 가서 #p1101007#를 만나보자. ",
	["1"] = "기사등급시험이 시작되었다. 내용은 간단하다. 수련의 숲 끝에 있는 #b제 2 연무장#k에 가서 그 안에 있는 티티들을 물리치고 #t4032100#를 가져오면 된다. #b#t4032100# 30개#k를 찾아 #p1101007#에가 돌아오자. \n\n#i4032100# #t4032100# #b#c4032100# / 30#k",
	["2"] = "기사등급시험을 완료했다. 이제 수련기사는 종료, 정식기사로 임명 받았다. 시그너스 기사단의 정식기사로서 임무에서 즐거움을 찾도록 하자.",
	["area"] = 15,
	["type"] = "[전직]",
}
nTable["say0"] = {
	["base"] = {["1"] = "어? 기사등급시험? 벌써 그걸 보는 거야? 이야, 대단한데? 아직 들어온 지 얼마 되지도 않았잖아. 하긴... 시그너스 기사단에 쌓은 공적을 생각하면 할 때도 되었지만... 좋아, 기사등급시험을 허락할게! 바로 시작할래?"},
	["yes"] = {["1"] = "시험은 단순해. 저 수련의 숲에 끝까지 가면 연무장이라는 게 있는데, 그 중 #b제 2 연무장#k 안에 들어가서 티티들을 물리치고 #b#t4032100# 30개#k를 가져오면 돼. ", ["2"] = "시험의 증표를 모두 가져오면, 다들 널 정식기사로 인정할 거야. 자, 그럼 즐기다 와!"},
	["no"] = {["1"] = "음. 음. 음... 뭔가 준비할 거라도 있어? 알았어. 기다려 줄게. 준비 다 하거든 다시 말하라고."},
}
nTable["say1"] = {
	["stop"] = {
		["item"] = {["1"] = "아직 #b#t4032100# 30개#k를 모으지 못한 것 같네. 혹시 연무장의 위치를 까먹은 거야? 길치구나. 하긴 나도 좀... 하하하. 수련의 숲 끝에 가면 #b제 2 연무장#k이 있으니까 거기서 #t4032100#를 찾아오면 돼. 그럼 얼른 갔다 와."},
	},
}
return nTable
end