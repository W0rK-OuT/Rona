return function (self) 
local nTable = {"axe", "barehands", "bow", "crossBow", "gun", "knuckle", "mace", "poleArm", "spear", "swordOL", "swordOS", "swordTL", "swordTS"}

local nnTable = {}
for k, v in pairs(nTable) do
	nnTable[v] = {}
end

local axe = nnTable["axe"]
axe["stabO1"] = "fadadb99b09c4f7f8ee2b61c5cb9f46b"
axe["stabO2"] = "c8703ce576cc4c148235a3130726d5c5"
axe["stabOF"] = "992910335ade4af19261a733e017b504"
axe["swingT1"] = "ba3bcbe1dc604a04bf0391c38c99aff0"
axe["swingT2"] = "55399c8ec7d34038b9eeda8d095c3f08"
axe["swingT3"] = "a4b3eed18ec94971b1f390d39c6fc785"
axe["swingTF"] = "73c07f5c04254e5e9a6f18792978621f"

local barehands = nnTable["barehands"]
barehands["stabO1"] = "f413a1bf63c74a4ead982a3ec52e5d98"
barehands["stabO2"] = "207b95ab7513444c866304ac10d58b16"

local bow = nnTable["bow"]
bow["shoot1"] = "e84369aa7df74eb1bb93ed31d29310d3"
bow["swingT1"] = "623821bd7959468b8cfe1071b3bedfac"
bow["swingT3"] = "43198e9473a945ff81e48572c63d0d49"

local crossBow = nnTable["crossBow"]
crossBow["shott2"] = "df9360656bd7463082dcad7c9ea3ffed"
crossBow["stabT1"] = "008b35245c8e4677a868b92a6940e90b"
crossBow["swingT1"] = "fea45d8b51e04320a7d152d45a4e94ce"

local gun = nnTable["gun"]
gun["shot"] = "4c8e9fa522d04599a09e4e63e76b5cb1"
gun["swingT1"] = "4c592f6a94d64842a65deb60b68b1f3c"
gun["swingT2"] = "fa84af270ddf4397815bd0e361ec0043"
gun["swingT3"] = "f7b7efce15c14d1fb7bdcfe31edaf839"

local knuckle = nnTable["knuckle"]
knuckle["stabO1"] = "f866b808e4184c43adf5db73736dd809"
knuckle["stabO2"] = "bd8d183047f2428f91cf8d89ec8e427e"

local mace = nnTable["mace"]
mace["stabO1"] = "dd11221ea9224fb787e3d02c754579d2"
mace["stabO2"] = "b1888cbc2e8a434392522c60c789827b"
mace["stabOF"] = "5c1f4c9c94f14123946581dce11a20b9"
mace["swingO1"] = "4860e99a4d734b28b2f588b2cdb79ce4"
mace["swingO2"] = "c351c80814794791a633b3e3c48c78d4"
mace["swingO3"] = "d36c7ab616614c11800c44dd3e0498a1"
mace["swingOF"] = "13c03d5207f24f2f9041941382075e83"

local poleArm = nnTable["poleArm"]
poleArm["stabT1"] = "fa36c632b91244eda7ea76a3604aaf14"
poleArm["stabT2"] = "eb52b97f1a5d449eaa08246b83b65fb4"
poleArm["stabTF"] = "2a93ef2675ff45b582d796384e21af28"
poleArm["swingP1"] = "7605548fd3224a0485c2df5b514792f7"
poleArm["swingP2"] = "967bdcdd6e514253b4a3cc939dfcca8e"
poleArm["swingPF"] = "04f42771e245480b96aff807a354ecb7"
poleArm["swingT2"] = "c835accd3bb542a592b7e43d109af79f"

local spear = nnTable["spear"]
spear["stabT1"] = "cd3be0d3aa1b4a61ab02f819d9fe6ff0"
spear["stabT2"] = "da719775e071470daa3715db437fcbd4"
spear["stabTF"] = "b9603a7c88f9456199050edac0db75f1"
spear["swingP1"] = "dd04e9ed77804b058c37319947f90761"
spear["swingP2"] = "f8b0a2432bc64c4582b2b4d4c5bd4c8c"
spear["swingPF"] = "e929294b913e446ba6ac00bb201e62ed"
spear["swingT2"] = "95085cbc9c88494cb17cd7e6d2a62c25"

local swordOL = nnTable["swordOL"]
swordOL["stabO1"] = "2df39aa900784405a02ed057046970a4"
swordOL["stabO2"] = "4eaaa22faa934235b17043ca55df13da"
swordOL["stabOF"] = "a2f0791f4f7946ce9d16fbb7a1c4a0fb"
swordOL["swingO1"] = "701fae5706284ca393cd4c77b270415e"
swordOL["swingO2"] = "c126aa5a42054ecb9c6685d58c8d178f"
swordOL["swingO3"] = "e711b3bf50174394b32714cc39f67b00"
swordOL["swingOF"] = "8f4bd093df1941a1a69adefbd223deae"

local swordOS = nnTable["swordOS"]
swordOS["swingO1"] = "2943516c88734c4091f412863a2170af"
swordOS["swingO2"] = "9264f0a3cfc94b48bb350c2a9f662ae9"
swordOS["swingO3"] = "c912cab2887d429f97b8ee711ef649cd"
swordOS["swingOF"] = "2b8efb78e95348488ea8945ffcd4641f"
swordOS["stabO1"] = "405982ea3dc24a39a9e0a554ce7d0046"
swordOS["stabO2"] = "f4c598fbf26f4b5bb1ac42b75ef642cf"
swordOS["stabOF"] = "9ffea21922ea4bf188df3a168c46f05a"

local swordTL = nnTable["swordTL"]
swordTL["stabO1"] = "b4cc31ab2d9243ae97cf17000823abbd"
swordTL["stabO2"] = "b4cba1a72be74a2795b5708b0d3e3009"
swordTL["stabOF"] = "bb5edac1e7484e9787293271edb7793d"
swordTL["swingT1"] = "ae26a236c8b945ce986f217970cf1a72"
swordTL["swingT2"] = "e823d3b6162644f5989be20e999e30cb"
swordTL["swingT3"] = "fbc2592d5bf84f2d889cc4b430012c64"
swordTL["swingTF"] = "6acbf28bc15b4278a6fc65643c6a5e6b"

local swordTS = nnTable["swordTS"]
swordTS["shoot1"] = "92f62915d9f34ede867547ac44d2de27"
swordTS["stabO1"] = "6b8a55d113814d769a75fb770b7131f4"
swordTS["stabO2"] = "2f18d3d998f24880b7f94433043fd606"
swordTS["stabOF"] = "53f97579a8234a408a6232e4804e97bb"
swordTS["swingT1"] = "c9ea49bd46854011b7bcf1f314f49d44"
swordTS["swingT2"] = "d5cb13e5fe384f8fb96c947d40398357"
swordTS["swingT3"] = "540e04428ab04bc0978dda02a090b1f3"
swordTS["swingTF"] = "92f20bf785d5471e9889a4df499b504d"

self.weaponTable = nnTable
end