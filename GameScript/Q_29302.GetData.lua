return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000040,
	["lvmin"] = 180,
	["interval"] = 0,
	["item"] = {{["id"] = 1142011}},
	["job"] = {300, 310, 320, 311, 321, 312, 322},
}
nTable["check1"] = {
	["npc"] = 9000040,
	["level"] = 200,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142011, ["count"] = 1, ["job"] = 8}
	},
}
nTable["info"] = {
	["name"] = "칭호 도전 - 궁극에 다다른 궁수",
	["0"] = "#b#e칭호 도전 - 궁극에 다다른 궁수#n\n#k명예의 신관 달리어는 궁극에 다다른 자들에게 각기 다른 칭호를 내린다고 한다. 전사는 #e#b투신#k#n, 마법사는 #e#b현자#k#n, 궁수는 #e#b스나이퍼 로드#k#n, 도적은 #e#b레전더리 시프#k#n, 해적은 #e#b해적왕#k#n이 바로 그 칭호들이다. 명예의 신에게 선택받을 자격이 된다면 달리어에게 가서 시험을 받아 보자.",
	["1"] = "#b#e칭호 도전 - 궁극에 다다른 궁수#n\n#k\n - 레벨 : #b#jlevel##k / 200",
	["2"] = "#b#e칭호 도전 - 궁극에 다다른 궁수#n\n#k\n - 레벨 : #b#jlevel##k / 200\n\n명예의 신관 달리어는 레벨 200을 달성한 나에게 궁극에 다다른 전사 '#b스나이퍼 로드#k'의 칭호를 부여해주었다. ",
	["area"] = 10,
	["viewMedalItem"] = 1142011,
}
nTable["say0"] = {
	["base"] = {["1"] = "#v1142011# #e#b#t1142011##k\n\n - 궁수 레벨 200 달성\n\n#n이 훈장의 주인이 될 자격이 있는지 시험해 보시겠소?"},
	["yes"] = {["1"] = "그럼, 행운을 빌겠소. 딱히 정해진 기한이 없으니 자격이 충분하다 생각하면 언제든지 나에게 돌아와 심사를 받으시오. 그리고 이 도전을 완료하거나 포기하지 않는 이상 다른 칭호에 도전할 수는 없다는 것을 알아두시오."},
	["no"] = {["1"] = "조금 더 준비가 되면 다시 오시오."},
}
nTable["say1"] = {
	["base"] = {["1"] = "그대는 궁수 레벨 200 달성에 성공하였군! 대단한 업적이오. ", ["2"] = "이걸 받으시오."},
	["yes"] = {["1"] = "그대가 이 명예로운 칭호의 주인임을 나 달리어는 명예의 신을 대신해 세상에 공표하는 바요. 새로운 칭호에 도전하려면 언제든지 나에게 돌아오시오."},
	["stop"] = {
		["npc"] = {["1"] = "레벨 200을 달성하시오."},
	},
}
return nTable
end