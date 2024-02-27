return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040001,
	["lvmin"] = 25,
}
nTable["check1"] = {
	["npc"] = 2040001,
	["item"] = {{["id"] = 4031093, ["count"] = 20}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4000,
	["item"] = {
		{["id"] = 4031093, ["count"] = -20},
		{["id"] = 1072018, ["count"] = 1, ["job"] = 1180673},
		{["id"] = 1072040, ["count"] = 1, ["job"] = 2099202},
		{["id"] = 1072076, ["count"] = 1, ["job"] = 4198404},
		{["id"] = 1072081, ["count"] = 1, ["job"] = 8200},
		{["id"] = 1072033, ["count"] = 1, ["job"] = 16400},
		{["id"] = 1072294, ["count"] = 1, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "장난감 병정의 호두",
	["0"] = "에오스탑에 있는 장난감 병정 델브를 찾아가보자.",
	["1"] = "에오스탑 100층의 굳게 닫힌 문을 지키고 있는 장난감병정 델브로부터 지루한 경비 업무를 달래줄 #b맛있는 호두#k를 20개만 구해와 달라는 부탁을 받았다. 에오스탑에 있는 검은 생쥐 모양의 몬스터인 #b블랙 라츠#k가 줄 것 같다는데…\n\n#i4031093##t4031093# #b#c4031093##k/20",
	["2"] = "에오스탑 100층의 굳게 닫힌 문을 지키고 있는 장난감병정 델브에게 무료한 경비 업무를 달래줄 #b맛있는 호두#k 20개를 모아 전해 주었다. 델브는 매우 고마워 하면서 시간이 난다면 옆에 있는 장난감병정 올슨에게 말을 걸어보지 않겠냐고 말해 주었다.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "흐음... 너무 오랫동안 이 문을 지키고 있었더니 좀이 쑤시군요. 뭐라도 먹으면서 경비를 서면 나으려나... 보아하니 이곳 저곳 모험을 하고 계시는 분 같은데 무료한 저를 위해 조금만 시간을 내 주시지 않겠어요?"},
	["yes"] = {["1"] = "정말 고맙습니다. 하루 종일 같은곳에 서서 경비를 서는 일은 정말 지겹거든요. 하지만 뭐라도 먹을 것이 있다면 그 지겨움이 덜해질 것 같아요. 에오스탑 내부에서 발견할 수 있는 검은 생쥐 모양의 몬스터인 #b#o3210205##k가 가끔 주는 #b#t4031093##k를 20개 모아 가져와 주세요.", ["2"] = "에오스탑에서는 다른 호두도 많이 구할 수 있지만 #b#t4031093##k가 아니면 도무지 먹고 싶은 생각이 들지 않거든요. 고소한 냄새가 나고 속이 꽉찬 #b#t4031093##k라... 생각만 해도 군침이 도는군요. 그럼 모아와 주실 때까지 이곳에서 기다리고 있겠습니다."},
	["no"] = {["1"] = "많이 바쁘신 모양이죠? 하지만 별로 어려운 부탁은 아니니 나중에라도 마음이 바뀐다면 꼭 다시 절 찾아와 주세요. 그렇지 않으면 저, 무단 결근을 해 버릴지도 모른다구요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "드디어 돌아와 주셨군요! 그래요, 바로 이겁니다. 이 #b#t4031093##k 20개만 있으면 당분간은 지루한 경비 업무를 즐겁게 할 수 있을 것 같군요. 이렇게 제 부탁을 들어주시다니 정말 고맙습니다. 별것 아니지만 여기 제 선물을 받으세요."},
	["yes"] = {["1"] = "제가 드린 신발이 부디 도움이 되었으면 좋겠네요. 이렇게 도와주셨으니 옆에 있는 #b#p2040002##k에게 제가 잘 말해두겠습니다. 시간이 있을때 한 번 녀석과 이야기를 나눠보세요. 분명 도움을 요청해 올 테니까요. 그럼 저는 계속 경비일에 충실해야 겠네요. 안녕히 가세요~"},
	["stop"] = {
		["item"] = {["1"] = "아직 제가 부탁드린 #b#t4031093##k 20개를 모두 모으지 못하신 것 같군요. 에오스탑에서 볼 수 있는 검은 생쥐 모습을 한 몬스터인 #b#o3210205##k를 쓰러뜨리고 #b#t4031093##k를 얻어 저에게 가져와 주세요. 경비를 서면서 지겨울 때마다 먹으면 좋을 것 같거든요."},
	},
}
return nTable
end