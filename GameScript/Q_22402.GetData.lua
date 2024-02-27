return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 9901000,
	["lvmin"] = 50,
	["quest"] = {{["id"] = 22400, ["state"] = 2}},
	["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2001},
}
nTable["check1"] = {
	["npc"] = 9901000,
	["item"] = {{["id"] = 1912033, ["count"] = 1}},
}
nTable["act0"] = {
}
nTable["act1"] = {
	["skill"] = {
		{["id"] = 20011004, ["skillLevel"] = 1, ["masterLevel"] = 1, ["job"] = {2200, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218}}
	},
}
nTable["info"] = {
	["name"] = "드래곤 라이더를 만나다",
	["area"] = 7,
	["0"] = "#p1032001#씨의 말대로 #b#m102000000##k에 가서 #b타락파워전사#k라는 사람을 찾아보자. 무척 강한 사람이라니 혹시 전사의 성전에 있지는 않을까? ",
	["1"] = "#p9901000#를 만났다. 그는 친절하게도 드래곤 라이딩에 대해 알려주겠다고 말했지만 라이딩을 하려면 일단 안장이 있어야 한다는데... #b#m130000000##k에서 온 사람들이 멋진 안장을 갖고 있다고 하니 #m130000000#로 가서 안장을 구해 오자.\r\n\r\n#i1912033# #t1912033# #b#c1912033# / 1#k",
	["2"] = "아쿠아리움까지 가서 겨우 안장을 만들어 오자, #p9901000#는 흔쾌히 몬스터 라이딩 스킬을 알려 주었다. ",
	["parent"] = "드래곤 라이딩",
	["order"] = 2,
}
nTable["say0"] = {
	["base"] = {["1"] = "안녕하세요. 제가 바로 #p9901000#입니다. 최강의 전사가 되기 위해 뭔가 조언이라도 드릴까요? 음... 하지만 당신은 전사가 아니신 것 같은데 무슨 일이신가요?\r\n#L0##b드래곤 라이딩을 할 줄 아신다던데... 정말인가요?#l\n#k", ["2"] = "아... 네, 그래요. 전 여신의 축복을 받아 드래곤 라이딩을 할 수 있게 되었답니다. 드래곤도 타고 다닐 수 있다는 사실을 알고 깜짝 놀랐죠. 그런데 그게 왜요?\r\n#L0##b저도 드래곤을 타고 싶은데 어떻게 하면 될지 궁금해서요! 알려 주실 수 있으세요?#l\n#k", ["3"] = "일단 여신에게 드래곤을 받으려면 모험가 직업으로 레벨 200을 만드셔야 하는데... 그... 아시다시피 그건 쉽지 않아요. 전 몇 년이나 걸렸는걸요.\r\n#L0##b아, 그거라면 괜찮아요! 제게는 이미 드래곤이 있어요!#l\n#k", ["4"] = "아, 당신 옆에 있는 그거 말씀이신가요? 제 드래곤하고는 다르게 생겨서 커다란 도마뱀인줄 알았는데 드래곤이라고요? 우와, 레벨 200은 아니신 것 같은데 어떻게 구하신 거죠?\r\n#L0##b그냥 주웠어요. 아하하.#l\n#k", ["5"] = "...엥? 주우셨다고요? 뭔가 사연이 있으신 모양이네요. 좋아요. 당신께 드래곤 라이딩에 대해 알려드릴게요. 하지만 드래곤이 있다고 바로 라이딩을 할 수는 없어요. 준비물이 필요하죠.\r\n#L0##b뭘 준비하면 되나요?#l\n#k", ["6"] = "일단은 아주 #b강력한 안장#k이 필요해요. 그냥 드래곤을 탔다가는 단단한 비늘에 엉덩이를 찔려 무사하지 못할 거예요. 그러니 아주 튼튼한 안장이 필요한데...\r\n#L0##b튼튼한 안장은 어디서 구하나요?#l\n#k", ["7"] = "그, 글쎄요. 사실 전 여신의 축복으로 자연스럽게 안장이 업그레이드 된 케이스라 좋은 안장을 어디서 구할지는 잘 모르겠어요.\r\n#L0##b헉. 그렇군요. 뭐, 뭔가 힌트라도 없나요?#l\n#k", ["8"] = "에... 그러고 보니, #b새를 타고 다니는 사람들#k이 멋진 안장을 갖고 있던데... #b그 사람들의 고향#k에 가면 튼튼한 안장을 구할 수 있지 않을까요? 적어도 튼튼한 안장에 대한 정보는 있을 것 같은데..."},
	["yes"] = {["1"] = "새를 타고 다니는 사람들은 #b#m130000000##k에서 왔다는 말을 들었어요. 그러니 그곳으로 가면 안장에 대한 정보를 얻을 수 있을지도 몰라요. ", ["2"] = "많은 도움이 못 되어드려서 정말 죄송해요. 대신, 튼튼한 안장만 구해 오시면 당신께 라이딩 스킬을 구체적으로 전수해 드릴게요. "},
	["no"] = {["1"] = "음... 새를 타고 다니는 사람은 본 적이 없으신가요? 하나같이 멋진 안장을 갖고 있던데 그들의 고향에 특별한 안장을 만드는 사람이 있지 않을까요?"},
	["stop"] = {
		["0"] = {["answer"] = "1", ["flip"] = "1"},
		["1"] = {["answer"] = "1", ["flip"] = "1"},
		["2"] = {["answer"] = "1", ["flip"] = "1"},
		["3"] = {["answer"] = "1", ["flip"] = "1"},
		["4"] = {["answer"] = "1", ["flip"] = "1"},
		["5"] = {["answer"] = "1", ["flip"] = "1"},
		["6"] = {["answer"] = "1", ["flip"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "오오, 안장을 구해 오셨군요? 드래곤의 비늘에도 꿈쩍하지 않을 정도로 튼튼해 보이네요. 이 정도면 충분히 드래곤을 타고 다니실 수 있겠어요. 그럼 바로 드래곤 라이딩 스킬을 전수해 드릴게요."},
	["yes"] = {["1"] = "드래곤 라이딩 스킬을 전수해 드렸어요. 이 스킬과 안장만 있다면 드래곤을 자유자재로 라이딩 하실 수 있을 거예요. ", ["2"] = "단, 스킬을 사용할 때 드래곤이 다칠 수 있으니 내리셔야 해요. 어떤 지역은 라이딩이 불가능한 곳도 있으니 주의하시고요.", ["3"] = "앞으로 드래곤을 타고 멋지게 모험하시길 바랄게요."},
	["stop"] = {
		["item"] = {["1"] = "아직 드래곤의 비늘에서 엉덩이를 보호할, 튼튼한 안장은 구하지 못하신 건가요? 새를 타고 다니는 사람들이 멋진 안장을 가지고 다니던데... 그들의 고향에 가보시는 건 어때요? 그들은 #b#m130000000##k에서 왔다고 해요."},
	},
}
return nTable
end