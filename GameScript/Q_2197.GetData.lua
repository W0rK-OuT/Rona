return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2006,
	["lvmax"] = 10,
	["fieldEnter"] = {104000000},
	["job"] = {0},
}
nTable["check1"] = {
	["npc"] = 2006,
	["endscript"] = "q2197e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "몬스터북 영업사원 티앤크",
	["0"] = "#m104000000#에 도착하자마자 말을 거는 시끄러운 영업사원 #b#p0002006##k를 찾아가보자.",
	["1"] = "#m104000000#에 도착하자마자 말을 거는 시끄러운 영업사원 #b#p0002006##k를 찾아가보자.",
	["2"] = "영업사원 #b#p0002006##k와 #b몬스터북#k에 대해 이야기를 나누었다.",
	["area"] = 30,
	["autoStart"] = 1,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요!! 하하핫! 여러분의 마음을 움직이는 영업사원 #b#p0002006##k입니다. 무척 바쁘시겠지만 여러분을 위해 특별한 시간을 준비했습니다. 이제 막 메이플 용사의 길로 들어선 당신에게 '몬스터북'에 대해 친절하고도 자세한 설명을 드리고자 이렇게 왔습니다. 잠깐 시간을 내어서 꼭 저를 찾아와 주세요~!"},
	["yes"] = {["1"] = "저는 부둣가 근처 배만드는 곳에 있답니다."},
	["no"] = {["1"] = "아 괜찮습니다. #m104000000#를 방문하실 때 제가 다시 연락드리도록 하겠습니다."},
}
nTable["say1"] = {
}
return nTable
end