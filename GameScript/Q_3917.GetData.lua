return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101006,
	["lvmin"] = 32,
}
nTable["check1"] = {
	["npc"] = 2101006,
	["item"] = {{["id"] = 2022155, ["count"] = 5}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 4200,
	["item"] = {
		{["id"] = 2022155, ["count"] = -5}
	},
}
nTable["info"] = {
	["name"] = "장미를 사랑하는 어린왕자",
	["parent"] = "어린왕자를 위하여",
	["order"] = 1,
	["0"] = "니할 사막에는 이상한 소년이 있다. 사막에 어울리지 않는 옷차림에, 사막의 모래와도 비슷한 금빛 머리칼을 가진... #b#m260010500##k에 가서 그와 대화해 보자. ",
	["1"] = "이상한 소년은 그의 장미꽃이 시들어가는 것을 걱정하고 있었다. 장미꽃? 그런 꽃보다는 이런 곳에 앉아 있는 네가 더 걱정되는데... 소년의 장미꽃의 위해 #b#t2022155##k을 구해다 주자. \n\n#i2022155# #t2022155#  #b#c2022155##k/5",
	["2"] = "이상한 소년에게 #t2022155#을 구해 주었다. 소년은 다행이라는 듯 조용히 웃었다. 도대체 이 소년은 누구일까? 어째서 이런 곳에 있는 걸까?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "사막은... 왜 이렇게 넓은 걸까요. 너무 넓어서 오히려 아무것도 보이지 않는 것 같아요...  \r\n#L0# #b 왜 이런 곳에 있는 거니? 목 마르지 않니?", ["2"] = "목... 그러고 보니 아까부터 장미꽃이 시들어가고 있어요.  사막의 태양이 이 아이에게는 너무 뜨거운 모양이에요. 괜찮으시다면 장미꽃을 위해 #t2022155#을 구해 주시겠어요?"},
	["yes"] = {["1"] = "와아... 정말 감사해요. 그럼 장미꽃이 마시고 싶다는 #b#t2022155##k을 #b5개#k만 구해 주세요. 아주 작은 아이이니까, 그 정도면 갈증을 해결할 수 있을 거예요."},
	["no"] = {["1"] = "사막에는 왜 우물이 없는 걸까요...?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "#t2022155#을 구해오셨네요... 당신도, 꽃을 좋아하시는 모양이에요? \r\n#L0# #b (아니 꽃 때문이 아니라 네가 걱정되서 그러는데...)", ["2"] = "이제 이게 있으니 장미꽃도 더 이상 화내지 않을 거예요. 목이 마르다고 아까부터 화를 내고 있었거든요. 정말 다행이에요... 감사합니다."},
	["yes"] = {["1"] = "메이플 월드에 있는 모든 장미 중에서 가장 예쁘고 가장 착한 장미꽃이 바로 얘에요.."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["item"] = {["1"] = "아직 #b#t2022155# 5개#k를 다 구하지 못하신 모양이네요... 미안해요. 이 아이... 조금 욕심이 많은 편이거든요."},
	},
	["ask"] = 1,
}
return nTable
end