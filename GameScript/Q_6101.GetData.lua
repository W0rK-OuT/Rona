return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2040052,
	["quest"] = {{["id"] = 6100, ["state"] = 2}},
	["job"] = {312, 322},
}
nTable["check1"] = {
	["npc"] = 1012100,
	["item"] = {{["id"] = 4161024, ["count"] = 1}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4161024, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 100000,
	["item"] = {
		{["id"] = 4161024, ["count"] = -1}
	},
}
nTable["info"] = {
	["name"] = "오래된 책 ",
	["parent"] = "극단의 시험",
	["order"] = 2,
	["1"] = "모든 재료를 구해서 건네주자 #p2040052#는 잉크를 책에 뿌렸다. 그러자 신기하게도 잉크들이 저절로 스며들더니 곧 글자가 되었다. 그리고 그 내용은 궁수의 궁극 스킬에 관한 것! 궁수의 궁극 스킬이라고? #b#p1012100##k님을 찾아가보자.\n\n#t4161024#  #b#c4161024# / 1#k",
	["2"] = "처음 보는 이야기에 #p1012100#님께 질문을 드리자, 그녀는 무척 놀랐다.",
	["area"] = 10,
}
nTable["say0"] = {
	["base"] = {["1"] = "잉크가 완성 되었습니다. 이 잉크를 책에 뿌리면 이렇게… 오오, 역시! 기록에서와 마찬가지로 글자가 모이는군요. "},
	["yes"] = {["1"] = "자, 이제 책을 볼 수 있게 되었습니다. 어떤 내용인지는 모르지만, 유익한 지식을 얻기 바랍니다. 뭔가 궁수에 관련된 글이었으니 #b#p1012100##k님께서도 관심을 가지실 것 같군요."},
	["no"] = {["1"] = "책을 가져가시지 않으실 생각이신가요? 하긴 책이 부피가 크니 여행에 방해가 되겠군요. 가져가실 때까지 도서관에서 맡아두겠습니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "당신은 궁수의 길을 걷는 분. 원한다면 당신의 수련에 도움을 드릴 수 있습니다. 하지만 그러기엔 당신은 충분히 강한 것으로 보이는군요. 어떤 용무로 이 곳을 찾으셨는지?"},
	["yes"] = {["1"] = "이 책은? #b궁수의 궁극 스킬#k…! 잠시만 기다리세요."},
	["stop"] = {
		["npc"] = {["1"] = "음? 책에 무슨 문제라도 있습니까? 책은 궁수에 관련된 내용이었으니 그와 관련된 사람과 토론하시는 걸 추천합니다. #m100000000#의 #b#p1012100##k님과 이야기 해보세요."},
		["item"] = {["1"] = "궁수의 길을 걷는 분이라면 환영합니다. "},
	},
	["ask"] = {"책을 잃어버리셨더군요. 다행히도 어떤 분께서 친절하게 도서관의 것이 아니냐고 가져 오셨길래 맡아 두고 있었습니다."},
}
return nTable
end