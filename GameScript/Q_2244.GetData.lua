return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1061017,
	["lvmin"] = 10,
}
nTable["check1"] = {
	["npc"] = 1061017,
	["endscript"] = "q2244e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "트리스탄의 후계자",
	["area"] = 10,
	["0"] = "지하신전 밑바닥에서 트리스탄의 영혼이 날 부르는 소리가 들린다. 트리스탄의 무덤을 찾아가보자.",
	["1"] = "트리스탄의 영혼으로부터 발록의 부활을 저지한다면 그의 후계자로 인정하겠다는 이야기를 들었다. 메이플월드의 전설의 영웅 트리스탄의 후계자가 될 수 있다니! 지금 당장 도전이다.!",
	["2"] = "발록의 부활을 200번 저지하고 트리스탄으로부터 그 능력을 인정받아. 후계자로 임명되었다.",
	["summary"] = "발록의 부활을 200번 저지하자.",
	["demandSummary"] = "발록의 부활 저지 200번",
	["rewardSummary"] = "경험치 6,800\r\n#Wbasic#\r\n#i1142079:# #t1142079# 1개",
}
nTable["say0"] = {
	["base"] = {["1"] = "용감한 모험가여... 지하신전 전체에 발록의 사악한 기운이 퍼져나가고 있소. 지금 우리가 해야 할 일은 발록의 부활을 저지하는 거요. 그가 포기할 때까지 말이오. 이 일은 엄청난 대가를 필요로 하는 일이 될 것이오. 하지만 그대가 진정한 용사라면 기꺼이 나서줄 것이라고 생각하오. 마음을 정했소?\r\n"},
	["yes"] = {["1"] = "지금부터 그대가 해야 할 일은 발록의 부활을 저지하는 것이오. 발록의 부활을 200번 저지해 낸다면 진정한 메이플월드의 용사로 거듭나게 될 것이오. 그때가 되면 그대를 내 후계자로 인정하겠소. 용기를 내시오. 젊은 모험가여..."},
	["no"] = {["1"] = "심사숙고하는 자세는 높이 평가할 만하지만, 우리 모두에겐 시간이 별로 없소."},
}
nTable["say1"] = {
}
return nTable
end