return function (self) 
local nTable = {}
nTable["check0"] = {
	["npc"] = 1002103,
	["quest"] = {{["id"] = 2232, ["state"] = 2}},
}
nTable["check1"] = {
	["npc"] = 1002103,
	["endscript"] = "q2233e",
}
nTable["act0"] = {
}
nTable["act1"] = {
}
nTable["info"] = {
	["name"] = "명성도를 올려보자!",
	["area"] = 30,
	["0"] = " ",
	["1"] = "이번에 #b리더 알#k이 내준 과제는 #r명성도 1,000#k 달성! 만만치 않은 목표다. 리더 알에 의하면 이 수치는 리더쉽과 주니어를 챙겨주는 세심한 배려 없이는 절대로 달성할 수 없다고 한다. 리더 알이 준 힌트는 주니어의 경험치 획득과 레벨업을 최대한 도와주라는 것이었다. 경험치...레벨 업이라... 어떻게 도와주지?\n\n#r리더쉽 1,000 달성#k\n(패밀리 창을 열어 명성도를 확인해 보자)",
	["2"] = "드디어 명성도가 1,000이 되었다! ...분발한 주니어에게 진심으로 감사하자.",
	["parent"] = "리더 알의 노하우 전수",
	["order"] = 2,
}
nTable["say0"] = {
	["base"] = {["1"] = "자네의 그런 적극적인 행동은 패밀리 활동에도 매우 도움이 되는 좋은 자세일세! 자네가 그런 자세를 잃지 않고 주니어에게 신경을 잘 쓰기만 한다면, 자네의 명성이 메이플 월드를 진동시킬 날이 머지 않아 있을 것이네. 다음 과제를 수행하겠는가?"},
	["yes"] = {["1"] = "내가 자네에게 내 주는 다음 과제는 #r명성도 1,000#k을 이룩하는 것인데... 이건 정말 쉽지 않은 일이지. 한가지 팁을 알려주자면, 주니어에게 할 수 있는 모든 도움을 주어 그들의 성장을 도와주라는 것이라네. 자네가 이 일을 성공한다면 자네는 나보다 나은 엘더가 될 수 있을 것이라고 확신하지. 목표를 달성하면 나에게 와서 말해주게. 잊어버렸는지 모르겠지만, 명성도는 #r패밀리 창[단축키 : F]#k을 열면 확인할 수 있네."},
	["no"] = {["1"] = "그렇지... 보통 자네처럼 주저하고 마는 게 정상이지. 일반적인 반응이니 너무 자신감을 잃지는 말게. 그건 그렇고... 난 절대 자네를 내 패밀리에 받아주지 않을 걸세."},
}
nTable["say1"] = {
}
return nTable
end