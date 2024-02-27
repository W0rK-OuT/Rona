return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1201000,
	["lvmin"] = 120,
	["normalAutoStart"] = 1,
	["startscript"] = "q21400s",
	["job"] = {2111},
}
nTable["check1"] = {
	["npc"] = 1201002,
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "무기는 주인에게 싸움을 건다?",
	["area"] = 6,
	["0"] = "레벨 120이 되자 갑자기 #b#p1201000##k이 말을 걸어 오는데...",
	["1"] = "#p1201000#은 또다시 #p1201002#가 이상한 반응을 보인다며 빨리 #b#m140000000##k으로 와달라고 말했다. 이전까지와는 다르다며, 뭔가 심상치 않다는데...",
	["2"] = "#p1201002#는 왠지 괴로워하고 있다. 도대체 무슨 일이지?",
	["autoStart"] = 1,
	["type"] = "[전직]",
}
nTable["say0"] = {
	["base"] = {["1"] = "수련은 잘 하고 계신가요? 바쁘신데 미안하지만 어서 #m140000000#으로 돌아와 주세요. #p1201002#가 또다시 이상한 반응을 보이고 있어요... 이상해요. 예전 같은 반응이 아니에요. 좀 더 깊고 어두운... 그런 느낌이에요."},
	["yes"] = {["1"] = "뭔가 불길해요... 어서 돌아와 주세요. 전 단 한 번도 #p1201002#의 얼굴을 본 적도, 목소리를 들은 적도 없지만... 그가 괴로워하고 있다는 것은 알 것 같아요. #b#p1201002#의 주인인 당신만이 이 이상한 상태를 고칠 수 있을 거예요#k!"},
	["no"] = {["1"] = "농담하고 있는 게 아니에요! 아무래도 이상해요... #p1201002#에게 무슨 일이 생긴 게 분명해요!"},
}
nTable["say1"] = {
	["base"] = {["1"] = "으으윽...", ["2"] = "...넌... 아란? 왜 여기까지 온 거야...? 아, 그렇군... 저 앞에 있는 건방진 인간 여자아이가 부른 거로군... 쳇. 이번에는 부르지 말길 바랬는데..."},
	["stop"] = {
		["npc"] = {["1"] = "어서 #b#p1201002##k를 돌봐 주세요. 이대로라면 망가져 버릴 것만 같아요!"},
	},
}
return nTable
end