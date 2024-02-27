return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1103003,
	["lvmin"] = 19,
	["quest"] = {{["id"] = 20718, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101002,
	["item"] = {{["id"] = 4032144, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4032144, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 5000,
	["item"] = {
		{["id"] = 4032144, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "엘리니아 파견임무 종료",
	["0"] = "#m101000000# 지역 정보원 #b#p1103003##k가 임무에 관해 할 말이 있다는데...",
	["1"] = "#p1103003#는 이번 일에 관해 #p1032001#는 무혐의가 확실해졌다며, 일단 이번 일은 이것으로 일단락 되었으니 그림자에 관한 내용을 정리한 보고서를 #b#p1101002##k에게 전해 달라고 말했다. ",
	["2"] = "#p1101002#에게 #t4032144#를 전해 주었다. #p1101002#는 인형사의 손길이 점점 퍼져 가고 있다며, 인형사를 막기 위해서는 더 강해져야 하니 다음 임무까지 계속 수련에 힘써 달라고 말했다. ",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "인형사는 아마도 기사단에서 #p1032001#를 의심하리라 생각하고, 우리를 혼란시키기 위해 #b일부러 #m101000003#에 침입해 함정을 파려 했던 것 같아요#k. 만약 #p1032001#가 없는 사이에 당신이 #p1032001#의 집을 조사하지 않았다면 틀림없이 속았을 거예요.", ["2"] = "하지만 당신이 그림자와 싸우는 사이에 제가 #p1032001#를 만나고 있었죠. #p1032001#의 알리바이는 분명해요. 이것으로 #b#p1032001#의 혐의는 완전히 풀렸어요#k. #p1032001#는 이번 일과 전혀 관련이 없어요. ", ["3"] = "무엇보다 다행스러운 건, 인형사를 미리 발견해서 막았다는 거예요. 한동안 인형사도 #m101000000#를 노리지는 못하겠죠. 이걸로 #m101000000#의 이번 임무는 거의 일단락 되었군요. 여기 보고서를 써두었으니 #b#p1101002##k님에게 가져다 주세요."},
	["yes"] = {["1"] = "당신 덕분에 아무런 피해 없이 #m101000000#를 지킬 수 있었어요. 감사해요. 저도 더 많은 의심과 조사를 통해 #m101000000#에 한 치의 위험도 없을 수 있도록 노력해야겠네요... 다시 #m101000000#에 파견 임무를 맡게 될 때까지 몸 건강하세요."},
	["no"] = {["1"] = "왜, 왜 그러시는 거죠? 보고서에 혹시 무슨 문제가 있을지도 모른다고 의심하는 건가요?"},
}
nTable["say1"] = {
	["base"] = {["1"] = "#m101000000# 파견임무는 무사히 완료하신 것 같군요. 그럼 #t4032144#를 볼까요?"},
	["yes"] = {["1"] = "가끔은 의심병이 지나쳐 보이지만 역시 #p1103003#는 우수한 정보원입니다. 그의 태도가 아니었더라면 #m101000000#가 이렇게 적은 피해로 무사할 수 있을 리 없죠...", ["2"] = "당신도 훌륭했습니다. 인형사가 제법 수작을 부렸지만, #p1103003#와의 멋진 콤비 플레이로 막아냈군요. 훌륭한 공적입니다. 이걸로 기사단 내에 당신의 위상도 꽤 올라가겠군요.", ["3"] = "아무래도 인형사의 활동 범위가 점점 넓어지고 있는 것 같군요... 혼자 이렇게까지 하긴 힘들텐데... 역시 #r그들#k이 함께인 건가...?", ["4"] = "인형사를 막기 위해서 강한 힘은 필수입니다. 정보원들이 정보를 모으는 동안 당신은 수련에 힘써 주세요. 적어도 #b레벨 25#k는 되어야 다음 임무를 맡길 수 있을 것 같으니까요."},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p1101002##k님께는 안 가신 건가요? 보고는 신속하게 하는 게 중요한데... 혹시 뭔가 더 조사하고 싶으신 일이 있으신 거라면 도와드릴게요..."},
		["item"] = {["1"] = "#m101000000# 파견임무는 완료하신 겁니까? 그렇다면 #t4032144#를 가져오셨어야 하는데... 혹시 잃어버리신 거라면 #b#p1103003##k에게 가서 다시 써 달라고 하십시오."},
	},
}
return nTable
end