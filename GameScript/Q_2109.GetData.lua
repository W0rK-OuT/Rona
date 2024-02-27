return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1063004,
	["lvmin"] = 30,
}
nTable["check1"] = {
	["npc"] = 1061011,
	["mob"] = {
		[1] = {["id"] = 3230100, ["count"] = 99}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 7000,
	["item"] = {
		{["id"] = 2044101, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2043001, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2043101, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2043201, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2043301, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2043701, ["count"] = 1, ["prop"] = 9, ["job"] = 4198404},
		{["id"] = 2043801, ["count"] = 1, ["prop"] = 9, ["job"] = 4198404},
		{["id"] = 2044001, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2044201, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2044301, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2044401, ["count"] = 1, ["prop"] = 2, ["job"] = 2099202},
		{["id"] = 2044501, ["count"] = 1, ["prop"] = 9, ["job"] = 8200},
		{["id"] = 2044601, ["count"] = 1, ["prop"] = 9, ["job"] = 8200},
		{["id"] = 2044701, ["count"] = 1, ["prop"] = 9, ["job"] = 16400},
		{["id"] = 2020015, ["count"] = 3, ["prop"] = 6},
		{["id"] = 2020014, ["count"] = 3, ["prop"] = 6},
		{["id"] = 2020013, ["count"] = 5, ["prop"] = 6},
		{["id"] = 2044801, ["count"] = 1, ["prop"] = 9, ["job"] = 32800},
		{["id"] = 2044901, ["count"] = 1, ["prop"] = 9, ["job"] = 32800}
	},
}
nTable["info"] = {
	["name"] = "오염된 던전! <2-커즈아이>",
	["0"] = "깊은숲 어딘가에 몬스터를 경고하는 표지판이 있다는데…",
	["1"] = "#o3230100# #b99 마리#k를 퇴치한 후 기억하고 있는 자를 찾아가시오.  \n\n#o3230100# #r#a21091##k",
	["2"] = "#o3230100#를 퇴치해 보았지만, 그 수는 줄지 않았다.",
	["area"] = 30,
}
nTable["say0"] = {
	["base"] = {["1"] = "이것 99마리를 잡아오시오! #r - #p1061011# - "},
	["yes"] = {["1"] = "퇴치 후 #r#p1061011##k에게 보고하시오!"},
	["no"] = {["1"] = "..."},
}
nTable["say1"] = {
	["base"] = {["1"] = "앗! 정신집중! 휴~ 공중부양 수행은 자칫 흐트러지면 모든 게 수포로 돌아가게 된다는 말이지. 다음엔 좀 조용히 말 걸어다오. ", ["2"] = "그나저나 무슨 일인가? … 앗! 너! 오염된 몬스터를 찾아냈군. 무서운 오염의 기운으로 선량한 동물들이 변해 괴상한 몬스터가 되어 버렸지. 다른 심상치 않은 징조는 없었는가? … #b#o3230100#를 99마리#k나 퇴치하다니. 네 등 뒤에서 99마리의 #o3230100#가 맴돌고 있어. 등 뒤가 끈적거리지 않는가?"},
	["yes"] = {["1"] = "보상을 바라고 한 건 아니겠지만, 약한 자를 위해 힘써줬으니 감사의 표시라네. ", ["2"] = "여기서 여행을 끝내는 건 아니겠지? 저 던전 안에는 위험한 몬스터가 많지. 내가 여기저기 표지판을 세워 두었으니, 한 번 찾아보게. 후하게 보상하지! 몬스터들을 조심하게!"},
	["stop"] = {
		["npc"] = {["1"] = "퇴치 후 #r기억하고 있는 자#k에게 보고하시오!"},
		["mob"] = {["1"] = "휴~ 자칫 수양이 끝날 뻔 했군. 조용히 얘기해 주게. 아! 내가 세워놓은 표지판이 잘 이해가 안 된다는 거군. 띄르뚜르르~ #b커즈아이 99마리#k를 퇴치하고 나에게 다시 오면 된다네."},
	},
}
return nTable
end