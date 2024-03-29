return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111004,
	["lvmin"] = 75,
	["quest"] = {{["id"] = 3322, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111016,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 6000,
}
nTable["info"] = {
	["name"] = "드랭의 지하 서재",
	["parent"] = "드랭의 노트",
	["order"] = 1,
	["0"] = "실종된 연금술사, #p2111002#의 아내 #b#p2111004##k... #p2111002#에 대해 좀 더 조사해 보고 싶다면 그녀를 찾아가 보자.",
	["1"] = "#p2111002#에 대해 조사해 보고 싶다고 말하자, #p2111004#는 차라리 당신이라면 믿을 수 있을 것 같다며 아무에게도 알린 적 없는 #p2111002#의 #b지하 서재#k에 대해 이야기해 주었다. 먼지 투성이라 아무것도 없는 곳이라지만 혹시 뭔가 단서가 있을지도... ",
	["2"] = "#p2111002#의 지하 서재에서 이상한 책을 발견했다. 혹시 이 책에 드랭의 비밀노트가 숨겨져 있는 건 아닐까? 책에 뚫려 있는 구멍은 무언가를 넣으면 딱 맞을 것 같은데... 떠돌이 연금술사가 말한대로 #p2111002#의 비밀노트를 찾을 열쇠가 은으로 만들어진 물건이라면, 어쩌면 #b#t4031744##k가 정답일지도 모른다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "설령 #p2111002#이 진짜 죄를 지었다고 해도 상관 없어요. 그를 사랑하니까요. 그가 죄인이라고 해도 이 마음이 사라지진 않을 거예요. 절대로... \r\n#b#L0# #p2111002#에 대해 조사하게 해주실 수 있나요?#l", ["2"] = "#m261000000#에 #p2111002#의 결백을 증명해 줄 사람 따윈 없어요. 당신께서 #p2111002#에 대해 조사해 주시겠다면 차라리 환영이에요. 제발 #p2111002#에게 어떤 일이 있었던 것인지 알아봐 주세요."},
	["yes"] = {["1"] = "한 가지... 협회장님께 말씀드리지 않은 사실이 있어요. 어차피 조사할 것이 없기 때문이라고 생각해서지만... 사실, #p2111002#의 집에 있는 파이프를 잘 조작하면, #b지하 서재#k로 갈 수 있어요. #p2111002#과 저 외에는 아무도 모르는 공간이지요. ", ["2"] = "별로 특별한 것이 있는 건 아니에요. 몇 번이고 #p2111002#에 대한 단서를 찾기 위해 뒤져봤지만, 원래 그 곳은 실험이나 연구를 위해 만든 것이 아니라 개인적인 용도로 만든 작은 서재일 뿐이라서요... ", ["3"] = "하지만 혹시 모르니... 그 곳도 한 번 살펴봐 주세요. 파이프를 잘 조작한 후, 암호를 맞추시면 들어갈 수 있어요. 암호는...#b필리아는 내 사랑#k이랍니다. 어머, 그렇게 쳐다보지 마세요... 부끄러우니까요. 무언가 단서를 발견하시면 꼭 말씀해 주세요."},
	["no"] = {["1"] = "...당신도 #m261000000# 연금술사들과 한패인 건가요?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "(바닥에 흐트러진 책이다. 별다른 것은 없어 보인다. 하지만 왠지 이상한데...? 책을 펴볼까?)"},
	["yes"] = {["1"] = "(언뜻 보면 평범한 책처럼 보이지만 책을 펼쳐 보자, 책을 구성하고 있는 종이 중앙에 #b동그란 구멍#k이 있다. #b동그랗고 납작한 물건#k을 넣으면 딱 맞을 것 같아 보이는데... 왠지 떠오르는 물건이 있다.)"},
	["stop"] = {
		["npc"] = {["1"] = "아직 #b지하 서재#k에는 안 가보신 모양이네요. 혹시 모르니 그 곳도 한 번 살펴봐 주세요. "},
	},
}
return nTable
end