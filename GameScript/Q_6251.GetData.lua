return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2081300,
	["job"] = {322},
}
nTable["check1"] = {
	["npc"] = 1012100,
	["item"] = {{["id"] = 4031487, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000000,
	["item"] = {
		{["id"] = 4031487, ["count"] = -1}
	},
	["skill"] = {
		{["id"] = 3221001, ["masterLevel"] = 10, ["job"] = {322}}
	},
}
nTable["info"] = {
	["name"] = "보이지 않는 눈으로 쏘는 화살",
	["0"] = "전직관인 #b#p2081300##k를 찾아가 보자.",
	["1"] = "#b#p2081300##k 는 그의 예전 이야기를 해주며, 수련의 벽에 부딪힌 것 같다면 그가 잃어버린 #b#t4031487##k을 찾아 #b#p1012100##k에게 가 보라고 말했다. 장갑은 켄타우로스가 가지고 있을 거라는데... \n\n#i4031487##t4031487# #b#c4031487#/1",
	["2"] = "#b#p1012100##k는 오래 전에 한 소년에게 주었던 장갑을 기억하고, 새로운 스킬을 가르쳐 주었다. 그것은, 적을 뚫고 지나갈수록 오히려 힘이 더 강해지는 #r#q3221001##k이다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네는 네 번째의 전직을 한 사람이로군. 어떤가? 새로운 힘을 갖게 된 기분은… 훗. 역시 그리 즐겁지만은 않아 보이는군. 새로운 경지를 보았지만, 정작 어디로 발을 옮겨야 할지는 알 수 없는 그 기분. 짐작이 가. 마치 숲에서 길을 잃은 것 같은 심정이겠지. 나 역시 그랬거든.", ["2"] = "아주 오래 전에, 나도 숲에서 미아가 된 적이 있었지. 의외인가? 하지만 당연한 일이었어. 처음 가 본 숲이었고, …난 눈이 보이지 않았으니까. 추위와 공포에 질려 아무것도 할 수 없던 나를 구해준 것은 숲에서 수행 중이던 한 궁수였다네. 누구일 것 같은가? 그래. #p1012100#님이셨지.", ["3"] = "눈이 보이지 않아도 심안이 있다면 맞추지 못할 것은 없다. 그 말만 믿고 #p1012100#님의 제자가 되어 수련을 했지. 발 밑도 못 보는 장님 주제에 활을 익힌다니, 다들 무리라고 했지. 하지만 어떤가? 지금의 나는 활로 초월의 경지에 이른 자가 아닌가? 자네도 정진하게. 보이지 않는다고 길이 없는 것은 아니니까.", ["4"] = "어디로 가야 할지 갈피를 잡지 못하는 자네에게 한 가지 충고해 줄까?"},
	["yes"] = {["1"] = "#b#p1012100##k님을 찾아가 보게. 자네와 같은 경지의 궁수를 가르칠만한 사람은, 역시 그 분 뿐이지. 아차, 그 분은 무척 엄격하셔서 그냥 가면 가르쳐 주시지 않을 거야. 스스로 길을 찾으라 하시겠지. ", ["2"] = "오래 전에 내가 그 분께 받았던 장갑을 잃어버렸는데… 그걸 찾아서 가 보게. 대상을 뚫고 지나갈 정도로 강한 활을 배우다 보니 다 낡은 장갑이지만 그렇기에 더 값어치가 있는 물건이지. 아직까지 나를 기억하고 계신다면, 자네에게도 가르침을 주실 거야. ", ["3"] = "장갑은 #r켄타우로스#k들이 가지고 있을 거야. 그 때는 경험이 부족해서 녀석들에게 당했거든. 지금은 상대하는 게 귀찮아서 안 가지만 말이야. "},
	["no"] = {["1"] = "충고가 필요치 않은 모양이군. 스스로의 힘으로 길을 찾을 수 있다는 건가? 무척 자신만만한 친구로군."},
}
nTable["say1"] = {
	["base"] = {["1"] = "...당신은 예전 궁수의 길을 가기로 했던 사람이군요. 과연 많은 발전을 이룬 것이 눈에 보여요. 당신을 궁수의 길로 인도한 사람으로서, 무척 기쁩니다. ...그런데 이건?\n이건… 오래 전에 내가 어떤 소년에게 주었던 장갑이군요. 이걸 왜 당신이?\r\n#b#L0#전달을 부탁 받았습니다.", ["2"] = "이런. 그 아이는 아직도 귀찮은 걸 남에게 미루는 버릇이 있군요. 강함을 간절히 원하여 활을 가르쳤지만, 그 버릇은 결국 고치게 하질 못했네요. 하지만 그래도 무척 노력하는 아이였죠. 그 노력이 그 아이를 최고의 궁수로 만들었고요. 그런데... 그 아이가 당신을 통해 이걸 보냈다는 건 당신 역시 새로운 길을 찾고 있다는 말이겠죠? 내 말이 맞나요?"},
	["yes"] = {["1"] = "당신은 이미 강한 자예요. 스스로의 힘으로도 충분히 길을 찾을 수 있을 것 같지만...오랜만에 옛 제자를 떠오르게 해 주었으니, 보답으로 한 가지 가르쳐주도록 하죠. ", ["2"] = "당신은 눈으로 적을 보고 그것을 맞추기 위해서 노력했을 거예요. 하지만 그것에는 한계가 있죠. 당신의 경지에서 보는 것은 무의미합니다. 눈으로 보지 말아요. 목표가 명확하다면, 눈을 감고서도 맞출 수 있어야 해요. 중요한 것은 누구보다 확고한 마음으로 표적을 정하는 일. ", ["3"] = "심안으로 적을 관통시킨다면 화살은 자연스럽게 그것을 따르게 되어 있어요. 눈에 의존하는 것이 아닌 강한 힘과 정신력으로 적을 관통시키는 스킬, 그것이 #r#q3221001##k입니다. ", ["4"] = "명심하세요. 당신의 심안이 적을 관통했다면, 화살은 당연히 적중하게 되어 있다는 것을..."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["npc"] = {["1"] = "오래 전에 켄타우로스의 영역에서 내가 잃어버렸던 그분의 장갑을 찾아서 헬레나님께 가보게."},
		["item"] = {["1"] = "무슨 볼 일이라도 있으신가요? 궁수의 길을 걷는 자라면 환영합니다."},
	},
	["ask"] = 1,
}
return nTable
end