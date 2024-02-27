return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040052,
	["lvmin"] = 36,
	["quest"] = {{["id"] = 3913, ["state"] = 2}, {["id"] = 3900, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101008,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 500,
}
nTable["info"] = {
	["name"] = "위즈에게 책 빌리기",
	["parent"] = "이야기꾼 셰헤라자드",
	["order"] = 2,
	["1"] = "이야기를 모두 들은 #p2040052#는 #p2101008#에게 책을 빌려 주겠다고 했다. 다만 #m222020000#은 꺼낸 만큼의 책을 다시 채워 넣어야 한다는 법이 있으니 책을 구해줘야 한다는데... 그렇다면 #b#p2101008##k가 알고 있는 이야기를 책으로 만들어 주면 되지 않을까? ",
	["2"] = "#p2101008#에게 #p2040052#의 말을 전하자 그녀는 환하게 웃으며 그녀가 알고 있는 이야기들을 적어 놓은 것이 있으니, 곧 묶어서 주겠다고 말했다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#m260000000#의 #p2101008#라... 곤란한 상황에 처하신 것 같군요. 그렇게 많은 이야기를 알고 있는 사람이 있다니 놀랍군요! 이 #m222020000#에 없는 이야기도 적지 않은 것 같습니다. 이야기책이요? 그거라면 물론 빌려드리겠습니다.", ["2"] = "하지만... 이 핼리오스탑 도서관에는 한가지 규칙이 있답니다. 한 권의 책이 나가면 그만큼의 책이 들어올 것. 책을 빌려주려면 그만큼의 책을 채워 넣어야만 합니다. 그러니 모험가님께서 새로운 이야기책을 구해 주셔야만 하는데... 괜찮으시겠습니까?"},
	["yes"] = {["1"] = "이 도서관에 없는 책을 구하는 일은 쉽지 않을 텐데, 그래주시겠다니 정말 다행입니다. 그렇다면 모험가님께서 책을 구해오실 때까지 #p2101008#님께 드릴 책을 골라 놓도록 하지요. ...아! 그보다 더 좋은 방법이 있군요.", ["2"] = "#b#p2101008##k님이 알고 있는 이야기들을 책으로 써서 주시면 되지 않겠습니까? 그게 다른 책을 구하는 것보다 훨씬 쉽고 간단할 것 같습니다. 급하게 책이 필요하신 모양인데 그렇게만 된다면 그녀에게 책을 빌려주는 일도 빨라질 것입니다."},
	["no"] = {["1"] = "#m222020000#에 없는 책을 구하는 일은 너무도 어려운 일이지요... 모험가님께서 거절하시는 것도 이해가 갑니다. "},
}
nTable["say1"] = {
	["base"] = {["1"] = "#m222020000#까지 갔다 오신 모양이네요. 그 곳의 사서님은 어떤 분이신가요? 그 분께서 책을 빌려 주셨나요...?"},
	["yes"] = {["1"] = "한 권의 책이 나가면, 한 권의 책이 들어와야 한다... #m222020000#에 그런 규칙이 있었군요. 그렇다면... 좋아요. 알고 있는 이야기들을 써 놓은 종이들이 있으니 그것들을 묶어 책으로 만들어 드릴게요. 잠시 후에 다시 와주시길... "},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b#p2101008##k님에게는 안 가신 겁니까? #b#m260000000##k까지는 먼 거리니 서두르는 게 좋지 않을까요?"},
	},
}
return nTable
end