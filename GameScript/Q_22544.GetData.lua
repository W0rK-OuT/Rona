return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1032104,
	["lvmin"] = 30,
	["quest"] = {{["id"] = 22543, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218},
}
nTable["check1"] = {
	["npc"] = 1022006,
}
nTable["act0"] = {
}
nTable["act1"] = {
	["exp"] = 3000,
}
nTable["info"] = {
	["name"] = "책의 행방은?4",
	["area"] = 7,
	["1"] = "#p1032104# 박사에게 책에 대해 물어보자, 그녀는 스승님이 그 책을 꼭 필요로 하셔서 스승님에게 책을 보냈다고 한다. #p1032104# 박사의 스승, #b#p1022006##k씨를 찾아 #b#m102000000# 동쪽 바위산#k으로 가자.",
	["2"] = "동쪽 바위산에서 #p1022006#씨를 만났다.",
	["parent"] = "책의 행방은?",
	["order"] = 4,
}
nTable["say0"] = {
	["base"] = {["1"] = "제게 무슨 볼일이라도 있으신가요? 네? #p1012110#이 보내서 오셨다니... 혹시 저희 애가 무슨 실례라도? 아, 그렇지는 않은 모양이군요. 그럼 어쩐 일이신가요? 책? #t4161050# 말이신가요? ", ["2"] = "그 책이라면 화석을 연구하는 학자이신 제 스승님께 필요할 것 같아 보내드렸어요. 최근 발견한 화석이 드래곤의 화석이 아닌지 관심이 많으셨거든요. 그러니 책이 필요하시면 스승님께 가보세요."},
	["yes"] = {["1"] = "아, 그러고 보니 제 스승님에 대해 설명을 안 드렸군요? 화석학의 권위자이신 #b#p1022006##k 박사님이세요. 야외 연구를 좋아하셔서 항상 밖에 계시지요. 지금은 #b#m102000000# 동쪽바위산#k 부근에 계실 거예요. ", ["2"] = "그런데 참 특이한 생물을 기르시는군요. 언뜻 보기에 도마뱀 같지만 뼈의 형질이나 구조를 보니 도마뱀은 아닌 것 같은데 잠시만 연구해도... 아, 실례했습니다. 지금 연구할 것도 많은데 괜히 더 늘리면 골치아프지. 그럼 이만."},
	["no"] = {["1"] = "그 책이 필요하신 게 아니었나요? 그렇다면 상관 없지만요."},
}
nTable["say1"] = {
	["base"] = {["1"] = "으헉! 뭐, 뭔가? 그 이상한 생물은? 도마뱀? 아니 도마뱀이건 도룡뇽이건 아무래도 상관 없으니 좀 뒤로 치워주게! 파충류는 질색이야! 무슨 볼 일인지 어서 말하게! "},
	["yes"] = {["1"] = "책? 책이라니... 아, 혹시 그 책인가? 잠시만 기다려 보게."},
	["stop"] = {
		["npc"] = {["1"] = "아직 스승님은 만나지 못하신 모양이군요. 스승이신 #b#p1022006# 박사님#k은 #b#m102000000# 동쪽 바위산#k에 계세요. "},
	},
}
return nTable
end