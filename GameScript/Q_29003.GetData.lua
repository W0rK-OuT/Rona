return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000040,
	["lvmin"] = 20,
	["interval"] = 0,
	["item"] = {{["id"] = 1142000}},
}
nTable["check1"] = {
	["npc"] = 9000040,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["item"] = {
		{["id"] = 1142000, ["count"] = 1}
	},
}
nTable["info"] = {
	["name"] = "성실한 모험가",
	["0"] = "#b#e칭호 도전 - 성실한 모험가#n\n#k30일의 제한시간 가운데 27일 동안 3시간 이상 접속하는 데 성공하면 #e#b성실한 모험가#k#n의 칭호를 얻을 수 있다. 명예의 신관 달리어에게 가보자.",
	["1"] = "#b#e칭호 도전 - 성실한 모험가#n\n#k - 남은시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분 #Qseclimit#초\n - 오늘 플레이 시간 : #Dhour#시간 #Dmin#분 #Dsec#초 / #Dminhour#시간 \n - 성공일 / 목표일 :  #Dcount#일 / #Ddaylimit#일\n                             #jgaugeDays#  #jperDays#%",
	["2"] = "#b#e칭호 도전 - 성실한 모험가#n\n#k - 남은시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분 #Qseclimit#초\n - 오늘 플레이 시간 : #Dhour#시간 #Dmin#분 #Dsec#초 / #Dminhour#시간 \n - 성공일 / 목표일 :  #Dcount#일 / #Ddaylimit#일\n                             #jgaugeDays#  #jperDays#%\n\n명예의 신관 달리어는 성실함이야말로 모험가의 첫째 조건이라고 칭찬하며 도전을 무사히 성공한 나에게 '#b성실한 모험가#k'라는 칭호를 내려주었다.",
	["timeLimit2"] = 2592000,
	["dailyPlayTime"] = 10800,
	["area"] = 51,
	["medalCategory"] = 2,
	["viewMedalItem"] = 1142000,
}
nTable["say0"] = {
	["base"] = {["1"] = "#v1142000# #e#b#t1142000##k\n\n - 제한시간 30일\n - 27일 연속 3시간 이상 게임 플레이\n\n#n이 훈장의 주인이 될 자격이 있는지 시험해 보시겠소?"},
	["yes"] = {["1"] = "자, 30일의 시간을 줄테니 27일 동안 3시간 게임플레이에 성공하면 나에게 돌아오시오. 제한시간 내에 나에게 와서 확인을 받아야만 인정받을 수 있다는 것을 꼭 명심하시오. 그리고 이 도전을 완료하거나 포기하지 않는 이상 다른 칭호에 도전할 수는 없다는 것도 알아두시오."},
	["no"] = {["1"] = "조금 더 준비가 되면 다시 오시오."},
}
nTable["say1"] = {
	["base"] = {["1"] = "그대는 27일 연속 3시간 이상 게임 플레이에 성공하였군! 대단한 업적이오. ", ["2"] = "이걸 받으시오."},
	["yes"] = {["1"] = "그대가 이 명예로운 칭호의 주인임을 나 달리어는 명예의 신을 대신해 세상에 공표하는 바요. 새로운 칭호에 도전하려면 언제든지 나에게 돌아오시오."},
	["stop"] = {
		["npc"] = {["1"] = "그대는 3시간 이상 플레이한 일수가 모자라오. 포기하고 다음 기회에 다시 도전하는 것이 어떻겠소?"},
	},
}
return nTable
end