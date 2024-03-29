return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2111007,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 3300, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2111007,
	["endscript"] = "q3301e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "제뉴미스트 협회장의 시험",
	["parent"] = "제뉴미스트 가입하기",
	["order"] = 1,
	["0"] = "마법과 과학의 결합. #b순수 연금술의 세계 제뉴미스트#k. 하지만 #m261000000#의 대립 속에서 제뉴미스트는 외부인을 받아들여 주지 않을 것 같다. 하지만 제뉴미스트에 꼭 가입하고 싶은데... #b#p2111007##k을 찾아가 보자.",
	["1"] = "#p2111007#은 제뉴미스트에 가입하기 위해서는 연금술사로서 연구한 결과물을 협회장 앞에서 보이는 까다로운 과정을 거쳐야 한다고  말했다. 하지만 #b종류에 상관 없이 보석의 원석 2개#k만 준다면 그의 능력으로 해결해 주겠다는데...",
	["2"] = "#p2111007#에게 보석의 원석 2개를 주자, 그는 잠시 기다려 보라고한다. ",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "마가티아가 정말 순수하게 학문을 연구하는 학자들의 마을이라고 생각해? 웃기는 소리. 마가티아만큼 각자의 목적에 따라 세력 다툼을 하는 마을도 없지. 진실로 학문만을 추구하던 자들은 모두 사라졌어. ...뭐, 브로커에게는 좋은 일이지만 말이야.\r\n#b#L0#대립이 심한가요?#l", ["2"] = "그래. 덕분에 너같은 모험가들은 곤란하겠지. 사람들이 서로 신경을 곤두세우고 대립하는 상황이라 어느 쪽이건 끼어들 수가 없어. 의심이 심해진 자들이라 외부 사람이 개입하기 어렵거든. 너도 마을을 다녀 봤으면 대충 눈치챘겠지?\r\n#b#L0#약간은...#l", ["3"] = "마가티아의 상황에 대해 좀 알아보고 싶다면 제뉴미스트와 알카드노, 둘 중 어느 쪽이건 가입해서 그들 무리에 속해야만 해. 물론 그것도 쉽지 않지만... 이 브로커님에게는 다 방법이 있거든. 어때? 혹시 #b제뉴미스트#k에 가입할 생각 있어? \r\n#b#L0#제뉴미스트에 가입하고 싶어요.#l", ["4"] = "후후... 그렇게 말할 줄 알았어. 모험가가 모험을 거부할 리가 없지. 하지만 제뉴미스트에는 가입하기 쉽지 않아. 정통 학파랍시고 아주 까다롭게 굴거든. 제뉴미스트에 가입하려면, 연금술사로서 그동안 연구한 성과물을 연성해 보여야 한다고. \r\n#b#L0#그럼 불가능하다는 이야기인가요?#l", ["5"] = "그럴리가... 후훗. 이 #p2111007#은 고객이 원하는 건 뭐든지 들어준다고. 메소가 될만한 보석의 원석을 2개 정도만 주면 제뉴미스트에 가입할 수 있도록 해주지. 장담하건데, 이 #m261000000#에서 널 도울 수 있는 사람은 이 #p2111007#뿐이야. "},
	["yes"] = {["1"] = "좋은 결정이야. 자, 그럼 거래할 준비가 되면 다시 오라고. 메소가 될만한 #b보석의 원석 2개#k면 뭐라도 좋으니 가져오면 돼. 그리 어렵지는 않잖아? 그걸로 널 제뉴미스트의 일원으로 만들어 주지..."},
	["no"] = {["1"] = "싫다는 거야? 흐음. 연금술에 자신이 있는 모양이지? "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
		["3"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
}
return nTable
end