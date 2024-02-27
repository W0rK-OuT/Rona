return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1101002,
	["lvmin"] = 28,
	["quest"] = {{["id"] = 20725, ["state"] = 2}},
	["job"] = {1000, 1100, 1110, 1111, 1112, 1200, 1210, 1211, 1212, 1300, 1310, 1311, 1312, 1400, 1410, 1411, 1412, 1500, 1510, 1511, 1512},
}
nTable["check1"] = {
	["npc"] = 1101002,
	["mob"] = {
		[1] = {["id"] = 9300285, ["count"] = 1}
	},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 12000,
}
nTable["info"] = {
	["name"] = "인형사를 잡아라!",
	["0"] = "#b#p1101002##k에게 #m105040300#에서 얻은 정보들을 보고하자.",
	["1"] = "#p1101002#는 인형을 들고 다니는 소년이 #o9300285#가 확실한 것 같다며, 정보대로 #o2230100#의 굴에 있는 #b#o9300285#의 본거지#k에 쳐들어가 #r#o9300285# #p1104000##k를 무찔러 달라고 말했다. \n\n#o9300285##r #a207301##k",
	["2"] = "#o9300285# #p1104000#를 무찔렀다. 그러는 와중에 들은 블랙윙이라는 단어에 대해 #p1101002#에게 묻자, 그는 검은 마법사를 따르는 무리들의 단체를 블랙윙이라고 부른다며 #p1104000# 역시 그 단체 소속이었음이 분명하다고 말했다.",
	["area"] = 15,
}
nTable["say0"] = {
	["base"] = {["1"] = "흠... 그렇군요. 당신의 정보에 따르면 #m105040300#의 주민들이 본 인형을 들고 다니는 소년이 #o9300285#가 확실한 것 같습니다. #m105040300#에 몸을 감추고 빅토리아 아일랜드 여기저기를 돌아다니며 몬스터를 조종한 거죠. ", ["2"] = "적의 위치를 알았으니 망설일 필요는 없겠군요. 정보대로 이블이아의 굴에 있는 #b#o9300285#의 본거지#k에 가서 #r#o9300285#, #p1104000##k를 무찔러 주십시오. 당신이라면 혼자서도 충분히 해낼 수 있을 겁니다."},
	["yes"] = {["1"] = "본거지에 들어갈 때는 #b암호#k가 있는 모양이지만... 뭐, 사실 암호도 아니죠. 지금까지의 정보를 종합해 보면 답은 이미 나와 있지 않습니까? 그래도 정 모르겠으면 알려 드릴 테니 다시 말을 걸어 주세요."},
	["no"] = {["1"] = "두려워하실 거 없습니다. 당신이 할 수 있는 일이기에 임무를 드리는 겁니다. 겁내지 말고 해내십시오. ...네? 이럴 때만 좋은 말을 한다고요? 하하하. 자주 듣는 말이죠."},
}
nTable["say1"] = {
	["base"] = {["1"] = "#o9300285#를 무찌르셨군요. 훌륭합니다! 역시 당신이라면 해내실 거라 믿고 있었습니다. 흠... 그런데 표정이 왠지 어두우시군요. 뭔가 안 좋은 정보라도 있었습니까?"},
	["yes"] = {["1"] = "#r블랙윙#k... #o9300285# #p1104000#가 그 이름을 말했습니까? 역시 그렇군요. 그 역시 블랙윙 소속이었군요... ", ["2"] = "블랙윙은 검은 마법사를 따르는 무리들을 가리킵니다. 검은 마법사가 세계를 지배하던 시대를 그리워하며 다시 한 번 세계를 공포로 몰아가려 하는 자들이지요. #o9300285#도 블랙윙의 소속이었다니... 역시 그들이 다시 활동을 하려는 모양이군요. "},
	["stop"] = {
		["mob"] = {["1"] = "#o2230100#의 굴 어딘가에 있는 #b#o9300285#의 본거지#k를 찾아, #r#o9300285# #p1104000##k를 무찔러 달라고 말씀 드렸는데요. 혹시 암호를 모르시는 겁니까? 하아... 정보 수집은 잘 하셨으면서 정작 취합은 못하시는군요. ", ["2"] = "#p1061006#에 새겨져 있던 낙서의 내용을 기억하십니까? 암호는 OOOO는 천재 #o9300285#! 여기에 들어갈 단어가 뭐가 있겠습니까. 본인의 이름인 #p1104000# 외에 더 있겠습니까? 암호는 #b#p1104000#는 천재 #o9300285##k! 입니다. 띄어쓰기에 주의하세요. "},
	},
}
return nTable
end