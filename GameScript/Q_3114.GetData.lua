return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2012026,
	["lvmin"] = 83,
	["quest"] = {{["id"] = 3113, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2012026,
	["infoex"] = {"42"},
}
nTable["act0"] = {
	["info"] = "0",
	["item"] = {
		{["id"] = 4161036, ["count"] = 1}
	},
}
nTable["act1"] = {
	["pop"] = 20,
}
nTable["info"] = {
	["name"] = "엘리쟈의 긴 잠",
	["parent"] = "여신의 애완동물",
	["order"] = 4,
	["1"] = "엘리쟈는 여신이 완전히 파파픽시의 손에서 풀려날 때까지 다시 잠을 청할 생각이라며, 그가 잠들 수 있도록 #b악기#k를 연주해 달라고 말했다. 여신의 하프를 연주하라니... 쉽지 않겠는걸?",
	["2"] = "악기 연주를 마치고 엘리쟈에게 돌아와 보자, 그는 이미 잠들어 있다. 좋은 꿈 꾸길...",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "감사합니다, 모험가님. 당신 같이 강한 모험가가 있으니, 아직도 어딘가에 숨어 있을 그림자에 대한 걱정을 덜었군요. 이제 그만 다시 잠을 청해야겠습니다. 여신께서 돌아오실 때까지... 하염없이.#E \n\n#L0# #b긴 잠이겠군요.#k#l", ["2"] = "그렇겠지요. 아... 혹시 모험가님께서는 음악을 좋아하시나요? 아름다운 음악과 함께 잠을 청하는 것만큼 즐거운 일도 없지요. 여신께서 들려주시는 하프 소리를 들으면 잠이 잘 오곤 했는데... 그것은 어렵겠군요.#E \n\n#L0# #b도와드릴까요?#k#l", ["3"] = "아...? 음악에 조예가 있으신 모양이군요. 그럼 부탁드려볼까요?"},
	["yes"] = {["1"] = "여기... 여신께서 자주 연주하시던 음악이 담긴 책이랍니다. 잘 보시고 정확한 음계로 연주해 주세요. 그럼 기대하겠습니다..."},
	["no"] = {["1"] = "하하... 역시 자신 없으신 모양이군요. 그럼 조금 오래 걸리겠지만 그냥 잠을 청해봐야겠군요."},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "......"},
	["yes"] = {["1"] = "(엘리쟈는 깊은 잠에 빠져든 것 같다.)"},
	["ask"] = {"작은별의 계이름이 담긴 책을 잃어버리신 모양이군요. 자, 다시 드릴테니 작은별을 연주해 주세요."},
}
return nTable
end