return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2010005,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3442, ["state"] = 2}},
	["item"] = {{["id"] = 4031243, ["count"] = 1}, {["id"] = 4031207, ["count"] = 1}},
}
nTable["check1"] = {
	["npc"] = 2010005,
	["item"] = {{["id"] = 4031243, ["count"] = 1}, {["id"] = 4021007, ["count"] = 3}, {["id"] = 4031207, ["count"] = 1}, {["id"] = 4000059, ["count"] = 50}, {["id"] = 4000060, ["count"] = 30}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4500,
	["item"] = {
		{["id"] = 4000059, ["count"] = -50},
		{["id"] = 4000060, ["count"] = -30},
		{["id"] = 4021007, ["count"] = -3},
		{["id"] = 4031243, ["count"] = -1},
		{["id"] = 4031207, ["count"] = -1},
		{["id"] = 4031134, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "자유여행권 복원하기",
	["parent"] = "플로리나비치 자유여행권",
	["order"] = 3,
	["1"] = "슈리를 찾아갔더니, 자유여행권은 새로 발급받을 수 없고 복원할 방법은 있다고 말한다. 자유여행권을 복원하려면 몇 가지 재료가 필요한데... \n\n #i04000059##t04000059# #b#c04000059##k/50 \n #i04000060##t04000060# #b#c04000060##k/30 \n #i04021007##t04021007# #b#c04021007##k/3\n#i4031243# #t4031243# #b#c4031243#/1#k\n#i4031207# #t4031207# #b#c4031207#/1#k",
	["2"] = "찢어진 자유여행권을 복원하고 보답으로, 평생 사용할 수 있는 플로리나비치 자유여행권을 지니게 되었으니... \n언제든 휴가는 마음먹기에 달렸군.",
	["area"] = 37,
}
nTable["say0"] = {
	["base"] = {["1"] = "찢어진 자유여행권을 가지고 계시다구요?\n지구방위본부 주변이 소문대로 험악하군요. 자신이 사용하지 못한다고 이렇게 찢어 놓다니..", ["2"] = "자유여행권은 특별한 티켓이라서 새로 발급 받으실 수는 없지만, 이 찢어진 티켓을 복원할 방법이 있기는 합니다. 그러기 위해서는 재료가 필요한데 구해만 오시면 제가 원래대로 복원을 한 번 해보겠습니다."},
	["yes"] = {["1"] = "티켓에 마법을 불어 넣기 위해서 필요한 재료는, 오르비스의 어딘가 공원에 돌아다니는 #b스타픽시의 별조각 50개#k와 #b루나픽시의 달조각 30개#k가 필요합니다. #b다이아몬드 3개#k도 있어야 하구요.\n재료들은 오르비스의 맑은 기운이 담긴 것들이랍니다."},
	["no"] = {["1"] = "아쉽네요. 그 조각난 티켓은 평생무료이용권으로 만들어졌던 것인데.. 언제든 시원한 해변가로 휴가를 떠나고 싶으시면 다시 찾아와 주세요. 자유여행권이 없으면 매 번 메소를 내고 여행을 하셔야 합니다. 즐거운 오르비스 여행이 되길 바래요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "재료를 다 모아오셨군요.\n아름다운 빛을 내는 것이 마법의 힘이 가득 들어 있네요. 저에게 재료를 주시면 다시는 이런 번거로움이 없게끔 평생 소장용 티켓으로 복원해 드릴게요"},
	["yes"] = {["1"] = "자~ 받으세요. 이것이 조각났던 티켓의 원래 모습이랍니다.\n이 플로리나비치 자유여행권을 소지하고 있는 동안에는 언제든지 무료로 휴가를 즐기실 수 있습니다.\n멋진 해변이 그리울 때면 여행가이드 슈리와 나나를 찾아 오시면 됩니다. 저처럼 잃어버리지 마시고 잘 보관하세요."},
	["stop"] = {
		["item"] = {["1"] = "재료가 부족한 것 같은데요. 빛이 비추질 않아요.\n아직 마법의 힘이 부족한 것이 무언가 재료가 빠져 있군요. 다시 한 번 확인해 보세요. 찢어진 여행티켓을 잃어버리셨다면 맨 처음 그것을 얻은 곳으로 돌아가보세요. 누군가가 보관하고 있을지도 모르니까요."},
	},
}
return nTable
end