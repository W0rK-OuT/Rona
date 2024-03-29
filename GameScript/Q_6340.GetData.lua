return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1090000,
	["lvmin"] = 120,
	["job"] = {512},
	["skill"] = {{["id"] = 5121003, ["acquire"] = 1}},
}
nTable["check1"] = {
	["npc"] = 1090000,
	["item"] = {{["id"] = 4031872, ["count"] = 50}},
	["mob"] = {
		[1] = {["id"] = 8140701, ["count"] = 150}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 1000000,
	["item"] = {
		{["id"] = 4031872}
	},
	["skill"] = {
		{["id"] = 5121005, ["masterLevel"] = 10, ["job"] = {512}}
	},
}
nTable["info"] = {
	["name"] = "냉정한 마음",
	["0"] = "슈퍼트랜스폼을 배웠으나 아직 쉽게 사용할 수 없다. 무엇이 문제일까? 카이린에게 물어보자.",
	["1"] = "슈퍼트랜스폼을 자유자재로 사용하려면 훈련이 필요하다고 한다. 슈퍼트랜스폼의 가장 큰 강점은 강철같이 단단한 몸이 될 수 있다는 점. 이를 잘 이용하기 위해서는 단단한 몸을 가진 레드 드래곤터틀을 관찰해보고 직접 상대해보자. 그리고 훈련의 증거로 #r레드 드래곤터틀 150마리#k를 물리치고 #b돌의 심장 50개#k를 카이린에게 모아가자. \n\n#i4031872##t4031872#  #b#c4031872# / 50#k \n#o8140701#  #r#a63401##k",
	["2"] = "카이린에게 훈련의 증거를 보여주고 스내치을 배웠다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "고민이 있는 듯한 표정이군. 무슨 일이 있는거야? 흐음… 슈퍼트랜스폼이 아직 몸에 익혀지지 않는다는 거야? 훗~ 걱정마. 아직 훈련이 부족해서 그러는 거니. 슈퍼트랜스폼을 적극적으로 사용하다 보면 어느 순간 자유자재로 슈퍼트랜스폼을 사용하고 있는 나를 발견할 수 있지. ", ["2"] = "쉽고 빠르게 몸에 익힐 수 있는 훈련이 있는데 한번 받아보겠어?"},
	["yes"] = {["1"] = "슈퍼트랜스폼을 사용할 때 냉정한 마음도 필요하지. 마음을 비우고 사용해야 한다는 말이야. 아직 마음이 여린 것 같은데… 리프레에 가면 레드 드래곤터틀이란 몬스터가 있지. 심장이 돌로 되어 있어 잔혹하고 냉정하지. 물론 그들을 보고 배우라는 것은 아니지만 어느 정도 참고를 해두라는 거야. 즉, 이번 훈련은 레드 드래곤 터틀을 상대하는 거지.", ["2"] = "훈련의 결과가 좋으면 선물도 주겠어. 슈퍼트랜스폼으로 사용할 수 있는 스킬을 가르쳐 주지. 어때? 좋아. 자, 그럼 가서 #r레드 드래곤터틀 150마리#k를 무찌르고 훈련의 증거로 레드 드래곤터틀의 #b돌의 심장 50개#k를 모아와."},
	["no"] = {["1"] = "아직 훈련의 필요성을 못 느끼나보군. 새로운 스킬이 배우고 싶다면 언제든지 찾아와."},
}
nTable["say1"] = {
	["base"] = {["1"] = "멋지게 훈련에 성공했군. 어때? 레드 드래곤터틀을 살펴본 느낌이… 강하지? 너도 약간의 훈련만 더 해준다면 그것보다 훨씬 강해질 수 있어. 그럼 훈련 성공에 대한 선물로 스내치를 가르쳐 주지."},
	["yes"] = {["1"] = "스내치는 #b슈퍼트랜스폼#k일때만 사용할 수 있으나 강력한 스킬이지. 좋은 일에 쓰도록 하길…"},
	["stop"] = {
		["item"] = {["1"] = "돌의 심장 50개를 가지고 와야지. 그래야 훈련을 했다고 인정해 줄 수 있어."},
		["mob"] = {["1"] = "레드드래곤터틀 150마리를 물리쳐야해. 그래야 훈련을 했다고 인정해 줄 수 있어."},
	},
}
return nTable
end