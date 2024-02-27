return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1063004,
	["lvmax"] = 65,
	["interval"] = 1440,
	["quest"] = {{["id"] = 2109, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1061011,
	["mob"] = {
		[1] = {["id"] = 3230100, ["count"] = 999}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 5000,
	["item"] = {
		{["id"] = 2043000, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2043100, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2043200, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044000, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044100, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044200, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044300, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044400, ["count"] = 1, ["prop"] = 9, ["job"] = 2099202},
		{["id"] = 2044500, ["count"] = 1, ["prop"] = 36, ["job"] = 8200},
		{["id"] = 2044600, ["count"] = 1, ["prop"] = 36, ["job"] = 8200},
		{["id"] = 2044700, ["count"] = 1, ["prop"] = 36, ["job"] = 16400},
		{["id"] = 2043300, ["count"] = 1, ["prop"] = 36, ["job"] = 16400},
		{["id"] = 2043700, ["count"] = 1, ["prop"] = 36, ["job"] = 4100},
		{["id"] = 2043800, ["count"] = 1, ["prop"] = 36, ["job"] = 4100},
		{["id"] = 2041013, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041019, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041022, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2041016, ["count"] = 1, ["prop"] = 1},
		{["id"] = 2020013, ["count"] = 3, ["prop"] = 216},
		{["id"] = 2020014, ["count"] = 2, ["prop"] = 216},
		{["id"] = 2020015, ["count"] = 2, ["prop"] = 216},
		{["id"] = 2000004, ["count"] = 10, ["prop"] = 72},
		{["id"] = 2043001, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2043101, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2043201, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044001, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044101, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044201, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044301, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044401, ["count"] = 1, ["prop"] = 4, ["job"] = 2099202},
		{["id"] = 2044501, ["count"] = 1, ["prop"] = 16, ["job"] = 8200},
		{["id"] = 2044601, ["count"] = 1, ["prop"] = 16, ["job"] = 8200},
		{["id"] = 2044701, ["count"] = 1, ["prop"] = 16, ["job"] = 16400},
		{["id"] = 2043301, ["count"] = 1, ["prop"] = 16, ["job"] = 16400},
		{["id"] = 2043701, ["count"] = 1, ["prop"] = 16, ["job"] = 4198404},
		{["id"] = 2043801, ["count"] = 1, ["prop"] = 16, ["job"] = 4198404},
		{["id"] = 2044801, ["count"] = 1, ["prop"] = 16, ["job"] = 32800},
		{["id"] = 2044901, ["count"] = 1, ["prop"] = 16, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "오염된 던전!! <2-커즈아이>",
	["0"] = "깊은숲 어딘가에 몬스터를 경고하는 표지판이 있다는데…",
	["1"] = "#o3230100# #b999 마리#k를 퇴치한 후 기억하고 있는 자를 찾아가시오.  \n\n#o3230100# #r#a21151##k",
	["2"] = "#o3230100#를 퇴치해 보았지만, 그 수는 줄지 않았다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "이것 999마리를 잡아오시오! #r - #p1061011# - "},
	["yes"] = {["1"] = "동료들과 함께 퇴치한 후 #r#p1061011##k에게 보고하시오!"},
	["no"] = {["1"] = "..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "앗! 정신집중! 휴~ 공중부양 수행은 자칫 흐트러지면 모든 게 수포로 돌아가게 된다는 말이지. 다음엔 좀 조용히 말 걸어다오. ", ["2"] = "그나저나 무슨 일이지? … 앗! 너! 오염된 몬스터를 찾아냈군. 무서운 오염의 기운으로 선량한 동물들이 변해 괴상한 몬스터가 되어 버렸지. 다른 심상치 않은 징조는 보지 못했는가? … 어쨌든 #b#o3230100#를 999마리#k나 퇴치하다니. 네 등 뒤에서 999마리의 #o3230100#가 맴돌고 있군. 등 뒤가 끈적거리지 않는가?"},
	["yes"] = {["1"] = "보상을 바라고 한 건 아니겠지만, 약한 자를 위해 힘써줬으니 감사의 표시라네.", ["2"] = "여기서 여행을 끝내는 건 아니겠지? 저 던전 안에는 위험한 몬스터가 많아. 내가 여기저기 표지판을 세워 두었으니, 한번 찾아보게. 후하게 보상하지! "},
	["stop"] = {
		["npc"] = {["1"] = "퇴치 후 #r기억하고 있는 자#k에게 보고하시오!"},
		["mob"] = {["1"] = "휴~ 자칫 수양이 끝날 뻔 했군. 조용히 얘기해 주게. 아! 내가 세워놓은 표지판이 잘 이해가 안 된다는 거군.  #b커즈아이 999마리#k를 퇴치하고 나에게 다시 오면 되네."},
	},
}
return nTable
end