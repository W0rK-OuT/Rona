return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9000040,
	["lvmin"] = 10,
	["interval"] = 0,
	["startscript"] = "q29400s",
}
nTable["check1"] = {
	["npc"] = 9000040,
	["endscript"] = "q29400e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "노련한 사냥꾼",
	["0"] = "#b#e칭호 도전 - 노련한 사냥꾼#n\n#k30일 내에 자신의 레벨보다 높은 #r100000마리#k의 몬스터를 사냥하라! 명예의 신관 달리어가 가장 영리하고 끈기 있는 노련한 사냥꾼을 찾고 있다. 성공하는 자에게는 #e#b노련한 사냥꾼#k#n의 칭호를, 그 중 최고의 실력을 가진 자에게는 #e#b전설적인 사냥꾼(특급 칭호)#n#k이라는 칭호를 준다고 하는데...",
	["1"] = "#b#e칭호 도전 - 노련한 사냥꾼#b#n\n\n#k - 남은 시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분 #Qseclimit#초\n - 사냥한 몬스터 수 : #r#jmon##k 마리 / #jmg# 마리#k\n                             #jgaugeHunt# #jperHunt# %\n\n※ 자신의 레벨 이상의 몬스터만 인정\n   (120레벨 이상의 캐릭터는 120레벨 이상의\n   몬스터 사냥시 인정)\n\n#b#e칭호 도전 - 전설적인 사냥꾼#n(특급 칭호)#k\n\n - 사냥한 몬스터 수 1위\n",
	["2"] = "#b#e칭호 도전 - 노련한 사냥꾼#b#n\n\n#k - 남은 시간 : #Qdaylimit#일 #Qhourlimit#시간 #Qminlimit#분 #Qseclimit#초\n - 사냥한 몬스터 수 : #r#jmon##k 마리 / #jmg# 마리#k\n                             #jgaugeHunt# #jperHunt# %\n\n※ 자신의 레벨 이상의 몬스터만 인정\n   (120레벨 이상의 캐릭터는 120레벨 이상의\n   몬스터 사냥시 인정)\n\n#b#e칭호 도전 - 전설적인 사냥꾼#n(특급 칭호)#k\n\n - 사냥한 몬스터 수 1위\n\n제한시간 안에 내 레벨 이상의 몬스터를 최대한 많이 사냥하는 사냥꾼 칭호에 도전하였다. 달리어는 '#b전설적인 사냥꾼#k'이 되기 위해서는 사냥 기록이 초기화되는 매월 초를 놓치지 말라고 조언해 주었다. 아, 일반 훈장을 잃어버렸을 때는 퀘스트를 다시 완료해야 얻을 수 있다고 하니 함부로 버리지 않도록 주의해야겠다.",
	["timeLimit2"] = 2592000,
	["area"] = 51,
	["medalCategory"] = 2,
	["viewMedalItem"] = 1142004,
}
nTable["say0"] = {
}
nTable["say1"] = {
}
return nTable
end