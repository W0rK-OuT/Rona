return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 2101000,
	["lvmin"] = 29,
	["quest"] = {{["id"] = 3900, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 2101000,
	["infoex"] = {"1"},
}
nTable["act0"] = {
	["info"] = "0",
}
nTable["act1"] = {
	["exp"] = 1000,
}
nTable["info"] = {
	["name"] = "비밀조직의 존재",
	["0"] = "#t4011008#의 생산지로 유명한 #b#m260000000##k. 하지만 #m260000000#의 사람들은 그리 부유해 보이지 않는다. 그것은 #m260000000#의 왕비 때문이라는데... 마을 중심에서 춤을 추는 무희, #b#p2101000##k이라면 왕비에 대한 소문을 알고 있지 않을까?",
	["1"] = "#p2101000#에게 왕비에 대해 묻자 그녀는 왕비의 폭정에 대해 불만을 터뜨리며, #b모래그림단#k을 언급했다. 모래그림단은 욕심 많은 왕비의 보석을 탈취해서 사람들에게 나눠주는 일을 하는 비밀조직이라는 것이다. 의적이라니 멋진데? 모래그림단에 가입하고 싶다고 말하자 #p2101000#은 약간 고민하더니 #b모래그림단에 대해 쓰여있는 벽#k을 찾으면 그들에 대해 알게 될 것이라 말했다. 벽을 찾은 뒤 #b#p2101000##k에게 돌아가자.",
	["2"] = "모래그림단의 표식이 그려진 벽을 찾았다. 자세히 살펴보니 모래그림단에 대한 힌트가 보이는 것 같은데... 힌트는 철퇴, 단도, 활? 무슨 뜻이지?",
	["area"] = 44,
}
nTable["say0"] = {
	["base"] = {["1"] = "#m260000000#는 마르지 않는 오아시스와 니할 사막에서만 발견되는 광석, 리튬이 있는 풍요로운 지역이야. 하지만 욕심 많은 왕비가 세금을 터무니없이 높게 거두는 바람에 사람들이 고생하고 있지. 왕비는 오르비스의 요정 출신이라는데... 세금으로 매번 어마어마한 양의 보석들을 사들이고 있어. \r\n#L0##b술탄은 무엇을 하고 있나요?#l", ["2"] = "술탄 말이야? #p2101009# 폐하는 원래는 총명한 술탄이었다는데... 모르겠어. 총명한 모습을 본 적이 있어야지. 굉장히 무기력한 술탄이라 아무런 힘도 없어. 소문에 의하면 왕비가 주술을 걸어서 그런 성격이 된 거라는데...?\r\n#L0##b왕비를 막는 사람들은 없나요?#l", ["3"] = "다행히도 그런 용기 있는 사람들이 있어서, #m260000000# 주민들의 희망이 되고 있지. 모래그림단이라는 의적 집단이 왕비의 보석을 훔쳐내어 사람들에게 나눠주지 않았다면 이미 오래 전에 사람들은 이 곳을 떠났을 거야.\r\n#L0##b의적 모래그림단? 그들을 만나려면 어떻게 해야 하나요?#l", ["4"] = "엥? 뭐야, 너 모래그림단에 가입하고 싶어진 거야? 너 같은 외부인이 무슨 생각인지 모르겠지만... 눈빛을 보니 나쁜 생각을 하는 건 아닌 것 같고... 그럼 모래그림단에 대해 알려 줄까?"},
	["yes"] = {["1"] = "모래그림단은 왕비의 미움을 받기 때문에, 최대한 사람들의 눈에 띄지 않도록 조심하고 있어. 그러니 가입하고 싶어도 가입을 할 수가 없지. 하지만 모래그림단과 연락하는 방법이 아주 없는 건 아니야.", ["2"] = "모래그림단이 #b마을 집들의 벽 중 어딘가#k에 그들에게 연락할 수 있도록 힌트를 써놓았다는 소문이 있어. 그 벽을 찾아서, 모래그림단 사람들에 대해 알게 된다면 모래그림단의 일원이 될 수도 있지 않을까 하는데... ", ["3"] = "물론 그 벽은 그냥 보기에는 보통 벽하고 똑같아. 겉으로만 봐서는 어떤 벽인지 전혀 알 수가 없다고 하더군. 그러니, 벽들을 샅샅이 뒤져야 할거야. 힌트를 주자면... 의외로 가까운 곳에 있을지도 모른다는 것?", ["4"] = "뭐, 벽을 찾아서 모래그림단과 연락이 통한다고 하더라도 모래그림단원이 될 수 있다는 건 아니니까 너무 기대하지는 마. 모래그림단원이 되기가 그리 호락호락할 리가 없잖아? "},
	["no"] = {["1"] = "역시 겁나는 모양이지? 모래그림단은 언뜻 보기에는 멋져 보이지만, 사실 술탄에게 반역하는 무리들이니까 괜히 끼어들었다가는 낭패를 볼 거야. "},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1"},
		["2"] = {["answer"] = "1"},
	},
	["ask"] = 1,
}
nTable["say1"] = {
	["base"] = {["1"] = "그들의 표시가 있는 벽을 찾아냈어?\r\n#L0##b 찾긴 했는데...무슨 뜻인지 전혀 모르겠어요.#l", ["2"] = "뭐라고 쓰여 있었는데?\r\n#L0##b '철퇴와 단검. 활과 화살만 있다면...'#l\r\n#L1# '바이런♡시린'#l\r\n#L2# '아...잊어버렸다.'", ["3"] = "철퇴와 단검... 활과 화살이라... 도대체 무슨 소릴까? 알려달라고? 훗. 나도 잘 모르겠는데? 그런 건 네가 직접 생각해야 하는 거 아니겠어? 힌트를 약간 준다면... 무기는 단지 물건일 뿐. 그걸 사용하는 건 사람이라는 거... 정도일까?"},
	["stop"] = {
		["0"] = {["answer"] = "1"},
		["1"] = {["answer"] = "1", ["2"] = "지유르 이녀석 또 낙서를 해놨네! 정말 속상해!!", ["3"] = "뭐야? 다시 가서 보고 와. 어디였는지는 기억하는거지?"},
		["npc"] = {["1"] = "아직 #p2103001#을 찾지 못한 모양이네? 하긴. 모래그림단이 그리 만만한 곳은 아니니까. "},
	},
	["ask"] = 1,
}
return nTable
end