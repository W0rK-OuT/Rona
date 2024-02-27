return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000040,
	["lvmin"] = 30,
	["interval"] = 0,
	["startscript"] = "q29503s",
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29503e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "기부왕",
	["0"] = "#b#e칭호 도전 - 기부왕#n(특급 칭호)\n#k단 1명만 소유할 수 있는 재력과 명예의 상징, #e#b기부왕#k#n 칭호에 도전하라! 각 마을을 대표하는 기부왕을 뽑는다고 한다. 명예의 신관인 #b#p9000040##k에게 가 보자.",
	["1"] = "#b#e칭호 도전 - 기부왕#n(특급 칭호)\n#k\n - 남은 시간 : #Qminlimit#분 #Qseclimit#초\n - 기부액수 : #b#jmoney##k 메소\n\n매월 초에 모든 마을의 기부 기록이 초기화된다. 달리어는 단순히 많은 금액을 기부하는 것만으로는 이 칭호의 주인이 될 수 없다며 남다른 지혜를 발휘해줄 것을 당부하였다. ",
	["2"] = "#b#e칭호 도전 - 기부왕#n(특급 칭호)\n#k\n - 남은 시간 : #Qminlimit#분 #Qseclimit#초\n - 기부한 마을 : #b#jm##k\n - 기부액수 : #b#jmoney##k 메소\n\n매월 초에 모든 마을의 기부 기록이 초기화된다. 달리어는 단순히 많은 금액을 기부하는 것만으로는 이 칭호의 주인이 될 수 없다며 남다른 지혜를 발휘해줄 것을 당부하였다. ",
	["timeLimit2"] = 3600,
	["area"] = 51,
	["medalCategory"] = 2,
	["viewMedalItem"] = 1142014,
}
nTable["say0"] = {
}
nTable["say1"] = {
	["stop"] = {
		["npc"] = {["1"] = "기부는 하셨소?"},
		["quest"] = {["1"] = "기부는 하셨소?"},
	},
}
return nTable
end