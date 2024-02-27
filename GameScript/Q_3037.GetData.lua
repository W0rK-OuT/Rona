return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2030007,
	["lvmin"] = 65,
	["quest"] = {{["id"] = 3036, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2020007,
	["item"] = {{["id"] = 4031060, ["count"] = 1}, {["id"] = 4000079, ["count"] = 80}},
}
nTable["act0"] = {
	["item"] = {
		{["id"] = 4031060, ["count"] = 1}
	},
}
nTable["act1"] = {
	["exp"] = 21415,
	["item"] = {
		{["id"] = 4031060, ["count"] = -1},
		{["id"] = 1102021, ["count"] = 1, ["prop"] = 1},
		{["id"] = 1102022, ["count"] = 1, ["prop"] = 1},
		{["id"] = 1102023, ["count"] = 1, ["prop"] = 1},
		{["id"] = 1102024, ["count"] = 1, ["prop"] = 1},
		{["id"] = 4000079, ["count"] = -80}
	},
}
nTable["info"] = {
	["name"] = "니크의 반지",
	["parent"] = "사냥꾼 스카두르의 아들 니크",
	["order"] = 2,
	["1"] = "용암동굴 안쪽 석상의 파편 아래에서 니크의 것으로 보이는 #b반지#k를 찾아냈다. 반지에 누군가의 이름이 적혀 있는것 같은데 스카두르에게 가져가면 알 수 있겠지...\n\n#i4000079##t4000079# #b#c4000079##k/80\n#i4031060##t4031060# #b#c4031060##k/1",
	["2"] = "용암동굴에서 니크의 유품을 찾아내고 불독의 송곳니도 모아 스카두르에게 가져다 주었다. 이걸로 니크도 만족해 하려나... 스카두르로부터 대대로 물려받은 망토를 받았는데 꽤 괜찮은 물건 같은걸...!",
	["area"] = 33,
}
nTable["say0"] = {
	["base"] = {["1"] = "#b#p2030007##k 아래에 좁은 공간이 있고 그 안쪽에 반짝이는 물건이 보입니다. 손을 안으로 뻗어 그 물건을 가져오시겠습니까?"},
	["yes"] = {["1"] = "#b#p2020007##k의 아들의 유품으로 보이는 #b#t4031060##k를 얻었습니다."},
}
nTable["say1"] = {
	["base"] = {["1"] = "이건 틀림없는 내 아들 니크의 반지...! 이 반지는 나와 아들만이 가지고 있는 세상에서 단 두개뿐인 물건이라네. 겉에는 아들과 나의 이름이 적혀 있지... 이 반지를 다시 보게 될 줄이야... 정말 고맙네! 정말 고마워!", ["2"] = "그리고 아들의 바람대로 동굴 안에 있는 #b#o7130001##k을 쓰러뜨리고 #b#t4000079##k를 잔뜩 모아와 주었군 그래. 보기만 해도 무시무시 하군... 아무튼 하늘나라에 있는 니크도 이걸로 만족해 하겠지..."},
	["yes"] = {["1"] = "이렇게 내 부탁을 들어주었으니 나는 이제 더 이상 원이 없다네. 좋아! 자네에게 우리집 대대로 내려오는 망토를 주겠네. 소중히 간직하고 있던 거지만 자네라면 이 망토의 진가를 훌륭히 발휘시킬 수 있을 것 같아."},
	["stop"] = {
		["npc"] = {["1"] = "#b#p2030007##k 아래에 공간이 있지만 아무리 안을 들여다 보아도 아무것도 발견할 수 없었습니다."},
		["item"] = {["1"] = "아직 내 아들 #b니크#k의 반지를 찾아내지 못했는가? 폐광 안쪽 용암동굴 어딘가에 있을 것 같은데... 그리고 아들의 뜻에 따라 동굴 안에 있는 #b#o7130001##k을 쓰러뜨리고 #b#t4000079# 80개#k를 모아와 주게나. 부탁하네."},
	},
}
return nTable
end