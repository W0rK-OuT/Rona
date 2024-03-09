return function (self,skillID,level) 
local effectTable = {}
local skillType = math.floor(skillID / 10000)
if skillType == 0 then
	if skillID == 1000 then
		if level <= 1 then
			effectTable["ball"] = "397772e52a9a4266afc276a06aa6246d"
			effectTable["hit"] = "12fab1a0a8e64654bf3f4d4061b6736d"
		elseif level <= 2 then
			effectTable["ball"] = "7e5d5f974a9f49b09cf6b31e83c67973"
			effectTable["hit"] = "060142eb7bd745aeb41e411eb26e108f"
		else
			effectTable["ball"] = "04b4250c728e454fa2f85206bbf0efd0"
			effectTable["hit"] = "645223f67d104e2dbeed5b606c93b8e4"
		end
		effectTable["hitY"] = -0.28
		effectTable["useSound"] = "1fbce3bd94a24f66841744a437f866bc"
	end
elseif skillType == 100 then
	if skillID == 1001004 then -- 파워스트라이크
		effectTable["effect"] = "af0922a80c044b10aeb2d435ccd6c191"
		effectTable["hit"] = "ff152037eae041daa724949d5ab90896"
		effectTable["useSound"] = "c5bf56bb431d4ccf86c6a5832d663a3e"
	elseif skillID == 1001005 then
		effectTable["effect"] = "81c923bf1ec9423b97b6ce47f03803e3"
		effectTable["hit"] = "e4655634fa3f472fab1e4325e7da575d"
		effectTable["useSound"] = "540ded96bd524d47b755f826e2a144c5"
	end
elseif skillType == 110 then
	if skillID == 1100002 or skillID == 1100003 then -- 파이널 어택
		effectTable["hit"] = "3bac3b7d212c42049b53515e7ae777dd"
		effectTable["hitSound"] = "12bb6dcd790440e3b1d7b9a320bcbb2d"
	end
elseif skillType == 120 then
	if skillID == 1200002 or skillID == 1200003 then -- 파이널 어택
		effectTable["hit"] = "3bac3b7d212c42049b53515e7ae777dd"
		effectTable["hitSound"] = "12bb6dcd790440e3b1d7b9a320bcbb2d"
	end
elseif skillType == 130 then
	if skillID == 1300002 or skillID == 1300003 then -- 파이널 어택
		effectTable["hit"] = "3bac3b7d212c42049b53515e7ae777dd"
		effectTable["hitSound"] = "12bb6dcd790440e3b1d7b9a320bcbb2d"
	end
elseif skillType == 111 then
	if skillID >= 1111003 and skillID <= 1111006 then
		effectTable["specialEffect"] = "coma"
		effectTable["hit"] = "1e409b4dac8444618aa58cb62b2da5c3"
		effectTable["useSound"] = "a5cef85ea78443e59ce51f883693549d"
	elseif skillID == 1111008 then -- 샤우트
		effectTable["effect"] = "a046bc3c022d43d688f052dc2b608ba1"
		effectTable["hit"] = "7f88ddebed414a8fabc00c308558a32f"
		effectTable["useSound"] = "5976d4e8ce0d423386db6b1580e5cdcb"
		effectTable["baseHitDelay"] = 700
		effectTable["nextHitDelay"] = 50
	end
elseif skillType == 121 then
	if skillID == 1211002 then -- 차지 블로우
		--effectTable["effect"] = "2117a8011b6b4ecd97d4a69a415edc72"
		effectTable["specialEffect"] = "chargeBlow"
		effectTable["hit"] = "0fcd9971acc648aa9cf07b494014b72e"
		effectTable["useSound"] = "1aa536533a8847f48d101abcce8651fc"
	end
elseif skillType == 131 then
	if skillID == 1311001 or skillID == 1311002 then -- 버스터
		effectTable["specialEffect"] = level <= 15 and "buster1" or "buster2"
		effectTable["hit"] = "58f357449dd94cde8efc9e02e28efc49"
		effectTable["useSound"] = "fcac442d953049d980da4b8d7bd766d8"
		effectTable["baseHitDelay"] = 400
	elseif skillID == 1311003 or skillID == 1311004 then -- 쓰레셔
		effectTable["specialEffect"] = "thrasher"
		effectTable["hit"] = "0c4832acfaed49a097da5b667894dcb0"
		effectTable["useSound"] = "482235d632bf48398fca6a0e73d82946"
		effectTable["baseHitDelay"] = 325
	elseif skillID == 1311005 then -- 새크리파이스
		effectTable["useSound"] = "32e99148fb3647c9847fa52d1358d5c0"
		effectTable["specialEffect"] = "sacrifice"
	elseif skillID == 1311006 then -- 드래곤 로어
		effectTable["effect"] = "5468cadd2f60428e925bc368968e1a1e"
		effectTable["hit"] = "01c803531e2c4e5aa3c3ef66f14711b8"
		effectTable["useSound"] = "eec2f5d35c6f4f6ebe8f19bb52dbf1d1"
		effectTable["baseHitDelay"] = 700
		effectTable["nextHitDelay"] = 50
	end
elseif skillType == 112 then
	if skillID == 1121006 then -- 돌진
		effectTable["effects"] = {
			{"03f201bb37554d50bd393be6d8c076f4", 1},
			{"09c57ef9495a4644acc3cd278b380cac", -1},
		}
		effectTable["useSound"] = "345019d3bae446df8057422b369bb232"
	elseif skillID == 1121008 then -- 브랜디쉬
		effectTable["specialEffect"] = "brandish"
		effectTable["hit"] = "3b7baa87916e48ee811f7596da11c1db"
		effectTable["hitSound"] = "f213ef26a3b8459da22c17c8fc3e7812"
		effectTable["useSound"] = "5a149519a4ea410cb412b2e84d1e17b9"
		effectTable["fixHitDelay"] = 360
		effectTable["attackDelay"] = 240
	end
elseif skillType == 122 then
	if skillID == 1221007 then -- 돌진
		effectTable["effects"] = {
			{"03f201bb37554d50bd393be6d8c076f4", 1},
			{"09c57ef9495a4644acc3cd278b380cac", -1},
		}
		effectTable["useSound"] = "345019d3bae446df8057422b369bb232"
	elseif skillID == 1221009 then -- 블래스트
		effectTable["specialEffect"] = "blast"
		--effectTable["useSound"] = "97d557e1519944a9b7fd1decd9fa471e"
		effectTable["fixHitDelay"] = 540
	elseif skillID == 1221011 then -- 생츄어리
		effectTable["effect"] = "fdc603a545c84514b89d89c1033669da"
		effectTable["hit"] = "1db7930cae2d46c49e989475708ce7b1"
		effectTable["hitSound"] = "2cc05078af454fa3a7856b9fb65ed61f"
		effectTable["useSound"] = "aa96c1117c634a23b56440be8de39037"
		effectTable["fixHitDelay"] = 1560
		effectTable["attackDelay"] = 40
	end
elseif skillType == 132 then
	if skillID == 1321003 then -- 돌진
		effectTable["effects"] = {
			{"03f201bb37554d50bd393be6d8c076f4", 1},
			{"09c57ef9495a4644acc3cd278b380cac", -1},
		}
		effectTable["useSound"] = "345019d3bae446df8057422b369bb232"
	end
elseif skillType == 200 then
	if skillID == 2001004 then -- 에너지 볼트
		effectTable["ball"] = "c2431ae58c4e4ce2abfcd7788d90a266"
		effectTable["hit"] = "00467e9182b74887b4ba528aa3456bb0"
		effectTable["useSound"] = "1f38ce6762914a51a4f071c456769696"
	elseif skillID == 2001005 then -- 매직클로
		effectTable["effect"] = "6634829736bb48c2b19f94d05a6096da"
		effectTable["hit"] = "6a7154fa48c243d48d95c775747b400f"
		effectTable["useSound"] = "a8f3eac6a1b84430a0eb1cf59152ca21"
	end
elseif skillType == 210 then
	if skillID == 2101004 then -- 파이어 에로우
		effectTable["ball"] = "5b03ff7299874e2e8ee0b4f5be9cd374"
		effectTable["hit"] = "3ab58d6a95cd4e998b5888b03133553c"
		effectTable["effect"] = "0a39b785c5dd481fbd3f0c18f805be19"
		effectTable["useSound"] = "3e2454dcc24a4d3aa074e6ad0a94ae21"
		effectTable["noBallEffect"] = 2
	elseif skillID == 2101005 then -- 포이즌 브레스
		effectTable["ball"] = "9a68e2240d4c49b9bf5a11083d48ec67"
		effectTable["hit"] = "86a1d9b442d14d2cb0daf6ec7a45f67b"
		effectTable["effect"] = "c81003af882b4c279acafd05d80cc73c"
		effectTable["useSound"] = "af96b2d5d70349dfb0ca97288a09a667"
		effectTable["hitSound"] = "72c18e2ebde244aab3884d0a6a768bb7"
	end
elseif skillType == 220 then
	if skillID == 2201004 then -- 콜드 빔
		effectTable["hit"] = "ecc368c04d974bf1ac47c9dcc6de3c74"
		effectTable["effect"] = "6d526944818b4e62b89351b1ddf9e779"
		effectTable["useSound"] = "53935f3691f145ca96821c9f5b9e9d38"
	elseif skillID == 2201005 then -- 썬더 볼트
		effectTable["hit"] = "5a33d4f14733491d8cb484c1e92747ac"
		effectTable["effect"] = "6b8c93571872496fbe0110f694ec9328"
		effectTable["useSound"] = "8047a75a40804f41b4128def7fca946d"
	end
elseif skillType == 230 then
	if skillID == 2301002 then -- 힐
		effectTable["hit"] = "d3f7b34e9a7249bdb1c217a4b61352d5"
		effectTable["head"] = 1
		effectTable["effect"] = "f3b611f9b0af4ac3a2b8af1b1b272ae1"
		--effectTable["affected"] = "1d2748f037af4be9b699b102ed0cbed5"
		effectTable["useSound"] = "bfdd064f93b64796b946ce37632163eb"
	elseif skillID == 2301005 then -- 홀리 에로우
		effectTable["ball"] = "1648e01f00264d48b9ca85596f7c7e03"
		effectTable["hit"] = "08375a1c94d146329065f96749143f3f"
		effectTable["effect"] = "078f20fe078f411ba9a613940ea5ebf0"
		effectTable["useSound"] = "0d2e6e839a93413a9be594891a617f66"
	end
elseif skillType == 211 then
	if skillID == 2111002 then -- 익스플로젼
		effectTable["effect"] = "ca2bdab28e9745ef8299741b09dd735f"
		effectTable["useSound"] = "3edd6d189b9b4bf1ac48162339848e36"
		effectTable["specialEffect"] = "rain"
		effectTable["baseDelay"] = 600
	elseif skillID == 2111003 then -- 포이즌 미스트
		effectTable["effect"] = "119564ef531c49df8364f27fa0b6e60f"
		effectTable["useSound"] = "31018ad228ad430597a2b256973b4c87"
	elseif skillID == 2111006 then -- 매직 컴포지션
		effectTable["hit"] = "e1902a56ff4840e4b206d2cf586eb502"
		effectTable["effect"] = "c95f7872a9a04d25ba7b8f0e91c5e856"
		effectTable["ball"] = "90b756ef72a04ade8fd5114776cf1e46"
		effectTable["useSound"] = "4ebb87d9b6eb491e992e445c6b9dd894"
		effectTable["baseDelay"] = 600
	end
elseif skillType == 221 then
	if skillID == 2211002 then -- 아이스 스트라이크
		effectTable["effect"] = "0e32870501064a28a6d34df0f885c56e"
		effectTable["hit"] = "1a75b416575544198c509dd37c0bdf6e"
		effectTable["useSound"] = "df6ab97a09494affbf9ea00e961caf0d"
		effectTable["baseDelay"] = 600
	elseif skillID == 2211003 then -- 썬더 스피어
		effectTable["effect"] = "b8ed39dae8784f698d616beb7d06dbcb"
		effectTable["hit"] = "c0dcf483ade04ae7a6150b6af211609f"
		effectTable["useSound"] = "635a114613ad45a2b746f8e4873c0f04"
		effectTable["baseDelay"] = 800
	elseif skillID == 2211006 then -- 매직 컴포지션
		effectTable["effect"] = "1380b841fceb4d6f908f59ae5b699604"
		effectTable["hit"] = "0f024421739b4e0988366995409017a4"
		effectTable["ball"] = "598ccf66f43e414a8c4a334a4fe4d962"
		effectTable["useSound"] = "4ebb87d9b6eb491e992e445c6b9dd894"
		effectTable["baseDelay"] = 600
	end
elseif skillType == 231 then
	if skillID == 2311004 then -- 샤이닝 레이
		effectTable["hit"] = "ef54f97bf97d43f3bf5d5ebeac13856b"
		effectTable["effect"] = "2bc0fe8852da4ae480e9bf0d06a2cee2"
		effectTable["useSound"] = "6f972ab4e14841398281f3fc2a8f376e"
	end
elseif skillType == 212 then
	if skillID == 2121001 then -- 빅뱅
		effectTable["specialEffect"] = "rain"
		effectTable["effect"] = "b00eacf09e664a2a99b6cf6c0fe5b64d"
		effectTable["useSound"] = "87ea689b70a84e78b6f9d2d93bbe7e59"
	elseif skillID == 2121003 then -- 파이어 데몬
		effectTable["ball"] = "c3bdb5ebffd94c6ca8ff507245012521"
		effectTable["hit"] = "eba4b063aad448d3971e73fc862652da"
		effectTable["effect"] = "9e88107a596f487983099827ba80cfdf"
		effectTable["useSound"] = "eb2537dacf4245098266ef5a8add64cd"
		effectTable["hitSound"] = "0b216b0b3c9b4cdeaf70755b469cf15a"
		effectTable["ballSpeed"] = 4
		effectTable["noBallEffect"] = 2
	elseif skillID == 2121006 then -- 페럴라이즈
		effectTable["effects"] = {{"8f4db125f0be441dac6c1e9abf2ec0eb", -1}}
		effectTable["hit"] = "5e5f6894ff374f908e40b1b1ce464673"
		effectTable["hitSound"] = "b4cbaa6c146244eb89b00843637cad17"
		effectTable["useSound"] = "137eb09740e547ff8815b8410512bc5f"
	elseif skillID == 2121007 then -- 메테오
		effectTable["effect"] = "47286e5fd6eb4a989792415aacf07f73"
		effectTable["effects"] = {{"2eb15c8e49f8492f948c5292cd31171f", -1}}
		effectTable["hit"] = "8aaeeb6a40ea49bb80699f1fda5bf428"
		effectTable["specialEffect"] = "tile"
		
		effectTable["hitSound"] = "2f4bc2b8745c41be91a6e8820ae5ff26"
		effectTable["useSound"] = "903f7ac591434f86802288ea6347626e"
		effectTable["onlyLeft"] = 1
	end
elseif skillType == 222 then
	if skillID == 2221001 then -- 빅뱅
		effectTable["specialEffect"] = "rain"
		effectTable["effect"] = "b00eacf09e664a2a99b6cf6c0fe5b64d"
		effectTable["useSound"] = "87ea689b70a84e78b6f9d2d93bbe7e59"
	elseif skillID == 2221003 then -- 아이스 데몬
		effectTable["ball"] = "0665385020284f3597045b246aca41b0"
		effectTable["hit"] = "650e644b8c234f22a960a722d3f775b7"
		effectTable["effect"] = "2916e1f0fea94fe9819c1c933eeaad93"
		effectTable["useSound"] = "40d10f2348f0417eb3e54aa004ee1df4"
		effectTable["hitSound"] = "e56619e6c9bc4630b67dc00a304fb20c"
		effectTable["ballSpeed"] = 4
		effectTable["noBallEffect"] = 2
	elseif skillID == 2221006 then -- 체인 라이트닝
		effectTable["effect"] = "82f9a75a70f14f7793ac7a82919a7d12"
		effectTable["hit"] = "1c73b44494124b919e4d4509d1bb6efe"
		effectTable["hitSound"] = "17f35637474145378ef74677d807e870"
		effectTable["useSound"] = "3c837a89f39e4e038b0a3a378de9a377"
		effectTable["chain"] = 1
	elseif skillID == 2221007 then -- 블리자드
		effectTable["effects"] = {{"446ad95bcca143f69cf19af23ad1bc21", -1}}
		effectTable["hit"] = "4453dede1ada4f4dbb7726e85e802964"
		effectTable["specialEffect"] = "tile"
		
		effectTable["hitSound"] = "e1a8f3a2878d454f91a97958f86bcd02"
		effectTable["useSound"] = "8e176397b44c4332b93287541e849dd1"
		effectTable["onlyLeft"] = 1
	end
elseif skillType == 232 then
	if skillID == 2321001 then -- 빅뱅
		effectTable["specialEffect"] = "rain"
		effectTable["effect"] = "b00eacf09e664a2a99b6cf6c0fe5b64d"
		effectTable["useSound"] = "87ea689b70a84e78b6f9d2d93bbe7e59"
	elseif skillID == 2321008 then -- 제네시스
		effectTable["effect"] = "e8db25d106a34e6e84c2eac2e028bcca"
		effectTable["effects"] = {{"40680a6a7caa4a12a13bc0803450d692", -1}}
		effectTable["hit"] = "3628a028741d4c099690e3a33e3a965c"
		effectTable["specialEffect"] = "tile"
		
		effectTable["hitSound"] = "9745f8c2d16d4959aeaf89ae6d2a7950"
		effectTable["useSound"] = "d309ec2ac3274bf2bf5d2a289d1c5b89"
		effectTable["onlyLeft"] = 1
	elseif skillID == 2321007 then -- 엔젤레이
		effectTable["ball"] = "fadecc7feda84790a119a0dcf6757a2f"
		effectTable["hit"] = "1e0c356f910143c3b37556e1f9e805ea"
		effectTable["effect"] = "0d0a92670fe147118e5285fa320ea6d5"
		effectTable["useSound"] = "7713c6abd05d44fb9b8cc5228d45d7cd"
	end
elseif skillType == 300 then
	if skillID == 3001004 then -- 에로우 블로우
		effectTable["ball"] = "de24a49dd48a4c86bbd7634c802b13cd"
		effectTable["hit"] = "ee83d86b502e4836aa847fff2a0e99b5"
		effectTable["useSound"] = "a82818d5194f45e09d41e1b7a10eb8e5"
	elseif skillID == 3001005 then -- 더블 샷
		effectTable["hit"] = "7ae17b72be364cdf8ea350bdb9d928b0"
		effectTable["base"] = 1
		effectTable["oneBall"] = 1
		effectTable["useSounds"] = {"80727a22cd3b470680c528c14f5909ca", _MaplePreferencesLogic.WeaponBowSound}
	end
elseif skillType == 310 then
	if skillID == 3100001 then -- 파이널 어택
		effectTable["hit"] = "387ec9be0573409da315e5b3392f41e4"
		effectTable["hitSound"] = "dee0268da18445e3943f25fd29a77268"
	elseif skillID == 3101003 then -- 파워 넉백
		effectTable["hit"] = "bfb711abce5f47faa68051c0f3b73893"
		effectTable["useSound"] = "8ba78abf38344de7982c57a59b4feec2"
	elseif skillID == 3101005 then -- 애로우 봄
		effectTable["ball"] = "b492422513ae4a62a67cb560210cec84"
		effectTable["bombHit"] = {"8df32574239440a49fe489f5907a61b9", "25a2f12c912e4827ba83263bc8ae4a06"}
		effectTable["useSound"] = "e1d64d2cf9cf486e826fa65dc183d177"
		effectTable["hitSound"] = "ddd07e9fbec8464ab3fe514fc2f8dc47"
	end
elseif skillType == 320 then
	if skillID == 3200001 then -- 파이널 어택
		effectTable["hit"] = "387ec9be0573409da315e5b3392f41e4"
		effectTable["hitSound"] = "dee0268da18445e3943f25fd29a77268"
	elseif skillID == 3201003 then -- 파워 넉백
		effectTable["hit"] = "bfb711abce5f47faa68051c0f3b73893"
		effectTable["useSound"] = "8ba78abf38344de7982c57a59b4feec2"
	elseif skillID == 3201005 then -- 아이언 에로우 : 석궁
		effectTable["ball"] = "82b048282d124508a66bb191268e94c2"
		effectTable["effect"] = "b15a9e28f6de49ae85a5a72b07116de1"
		effectTable["hit"] = "114dabd643f94090af076b11900830bf"
		effectTable["useSound"] = "175aca2dbb4a473a82604ae23fa84d89"
		effectTable["noBallEffect"] = 2
	end
elseif skillType == 311 then
	if skillID == 3111003 then -- 파이어 샷
		effectTable["ball"] = "c88bc152a7714deb8d439cf79a138d54"
		effectTable["effect"] = "ea86e9cccf7e4b37abcfbe86a99795f7"
		effectTable["hit"] = "cf1065a749db456e86957eafc1fbf450"
		effectTable["bombHit"] = {"", "cf1065a749db456e86957eafc1fbf450"}
		effectTable["useSound"] = "48c3b8c85a9c4890b8ab2a8e6604bd7e"
		effectTable["hitSound"] = "abbcb7c379784b0f9c7a80c3caf2f2fa"
        --effectTable["tile"] = {
        --    ["effect"] = {"a77a0c40485b4d27b857bd76ef3b136d", "d2c869f4b986475b8bfe75de0b209c22", "f0d959d0ff5248a893a785e4eea9a46b"}
        --}
		effectTable["specialEffect"] = "rain"
		effectTable["baseHitDelay"] = 100
		effectTable["nextHitDelay"] = 50
	elseif skillID == 3111004 then -- 에로우 레인
		effectTable["effect"] = "144d28d774a848dc9309a208433e1a3e"
		effectTable["hit"] = "f9a708fc43ef4ce787f95fb2384e5faf"
		effectTable["useSound"] = "735409241de94f1a930bc0910a5498d1"
		effectTable["hitSound"] = "ab8438d0bf0a4a20a5942329a1d58c11"
		effectTable["specialEffect"] = "rain"
		effectTable["fixHitDelay"] = 800
		effectTable["noRange"] = 1
	elseif skillID == 3111006 then -- 스트레이프
		effectTable["effect"] = "69591121d84e41268499e1383cf129e3"
		effectTable["hit"] = "15934274abc24c799b034cbca26fea02"
		effectTable["ball"] = "9383e948cdd74330b1fe286d54444433"
		effectTable["useSound"] = "3f1b23ab0ef14ee48906be92494786d9"
		effectTable["attackDelay"] = 20
	end
elseif skillType == 321 then
	if skillID == 3211003 then -- 아이스 샷
		effectTable["effect"] = "7fdfe173a3a24f4193efa1b90d47c8b7"
		effectTable["effects"] = {{"34a304183bbc4ac099932e57c651a59a", 0}}
		--effectTable["hit"] = "6bfce3aecefd41fcbd142c943f47fd71"
		effectTable["bombHit"] = {"6bfce3aecefd41fcbd142c943f47fd71", "6bfce3aecefd41fcbd142c943f47fd71"}
		effectTable["useSound"] = "fb7445216dad4eb3b12750bdd61e4683"
		effectTable["hitSound"] = "c222519be66a406d92ded9b74fd9bfff"
        --effectTable["tile"] = {
        --    ["effect"] = {"a77a0c40485b4d27b857bd76ef3b136d", "d2c869f4b986475b8bfe75de0b209c22", "f0d959d0ff5248a893a785e4eea9a46b"}
        --}
		effectTable["specialEffect"] = "rain"
		effectTable["baseHitDelay"] = 100
		effectTable["nextHitDelay"] = 50
	elseif skillID == 3211004 then -- 이럽션
		effectTable["effect"] = "178d9d2e9cc34240931ce62e301cfc20"
		effectTable["hit"] = "4c62731dd5c54fe2bbae621f068b7598"
		effectTable["useSound"] = "1b09984986c847eba4fd56974ba167e6"
		effectTable["hitSound"] = "7ce58db535e0431fa9a6c213816dead3"
		effectTable["specialEffect"] = "rain"
		effectTable["fixHitDelay"] = 800
		effectTable["noRange"] = 1
	elseif skillID == 3211006 then -- 스트레이프
		effectTable["effect"] = "69591121d84e41268499e1383cf129e3"
		effectTable["hit"] = "15934274abc24c799b034cbca26fea02"
		effectTable["ball"] = "9383e948cdd74330b1fe286d54444433"
		effectTable["useSound"] = "3f1b23ab0ef14ee48906be92494786d9"
		effectTable["attackDelay"] = 20
	end
elseif skillType == 312 then
	if skillID == 3121003 then -- 드래곤 펄스
		effectTable["hit"] = "800bee295e3a4c56a782af00b2fcc911"
		effectTable["effect"] = "8f62dd5cf41c47bc8e293547d0cf4f00"
		effectTable["ball"] = "aa26f6ddfd074286a821935cef7fced5"
		effectTable["hitSound"] = "f11d5d654c554cf39a0383adcccc9725"
		effectTable["useSound"] = "53509dc77101416aa67ef49867dcab09"
		effectTable["noBallEffect"] = 2
	elseif skillID == 3121004 then -- 폭풍의 시
		effectTable["hitSound"] = "b228e1ec9cad4d17a78e69efb387f2c9"
		effectTable["hit"] = "30c4695c79be4ee6a2ab5245ca094fe4"
		effectTable["ball"] = "53ef33f9d4e84dcaad0bef8e2bc092ef"
	end
elseif skillType == 322 then
	if skillID == 3221001 then -- 피어싱
		effectTable["hitSound"] = "8029a7c363b842d6b1587060abd4719c"
		effectTable["useSound"] = "bda039106bc54176920829c2194909d0"
		effectTable["hit"] = "f97f6934f9044ced80b299e0106e99d3"
		effectTable["ball"] = "30d1d3bdcb17406e908261646fc67438"
		effectTable["effect"] = "f1193f8336ad4f169e91b2b6bdc0371d"
		effectTable["noBallEffect"] = 2
	elseif skillID == 3221003 then -- 드래곤 펄스
		effectTable["hit"] = "800bee295e3a4c56a782af00b2fcc911"
		effectTable["effect"] = "8f62dd5cf41c47bc8e293547d0cf4f00"
		effectTable["ball"] = "aa26f6ddfd074286a821935cef7fced5"
		effectTable["hitSound"] = "f11d5d654c554cf39a0383adcccc9725"
		effectTable["useSound"] = "53509dc77101416aa67ef49867dcab09"
		effectTable["noBallEffect"] = 2
	elseif skillID == 3221007 then -- 스나이핑
		effectTable["hit"] = "fee34c70d88e46768e0fc31a6278c923"
		effectTable["effect"] = "2d1ebabfb2474590a1d839201799cd52"
		effectTable["ball"] = "1ca01f0b386d4c8d987971776f4ab5a0"
		effectTable["hitSound"] = "12c42b6eb84a4fba8903cfadc103432f"
		effectTable["useSound"] = "be07ff2b5d6f4ca6ad4bdd527732e020"
	end
elseif skillType == 400 then
	if skillID == 4001002 then -- 디스오더
		effectTable["hit"] = "510d15475d8b490d839315c51296c6f3"
		effectTable["useSound"] = "5d203e92904b44b29ed1f0faf8900be3"
	elseif skillID == 4001334 then -- 더블 스탭
		effectTable["hit"] = "3b1211cee22047bc9e9853bf6975858c"
		effectTable["useSound"] = "6bc947ead38c433583b71a769b9f0949"
	    --effectTable["hitDelay"] = {
	    --    {"3b1211cee22047bc9e9853bf6975858c", 0},
	    --    {"39974d5c6bc24da7bc50be58e3dc8aa5", 0.15}
	    --}
	elseif skillID == 4001344 then -- 럭키 세븐
		effectTable["base"] = 1
		effectTable["effect"] = "1ed68211deb34d4aaabf606af837c768"
		effectTable["hit"] = "640e5378676043b588ced8af4990b315"
		effectTable["useSound"] = "5996110d3d194e10967fd3745bd666b3"
		effectTable["hitSound"] = "a72e3d2418e74ae0a5c4bcb688da564a"
		effectTable["useSounds"] = {_MaplePreferencesLogic.WeaponTGloveSound}
		effectTable["countSound"] = "a409e66cd6844e2cb4aaa2f2bb9d0530"
	end
elseif skillType == 410 then
	if skillID == 4101005 then -- 드레인
		effectTable["effect"] = "442e636b41ba489d9846ca809c22a79a"
		effectTable["useSounds"] = {"a409e66cd6844e2cb4aaa2f2bb9d0530", _MaplePreferencesLogic.WeaponTGloveSound}
	end
elseif skillType == 411 then
	if skillID == 4111005 then -- 어벤져
		effectTable["ball"] = "760858fed304422494e8b7a627efd164"
		effectTable["effect"] = "318224c1aed544139afad41e316065ad"
		effectTable["useSound"] = "28d565bf11b242f8b55b05c1fe252b69"
		effectTable["noBallEffect"] = 2
		effectTable["baseDelay"] = 600
		effectTable["rotate"] = 15
		--effectTable["ballSpeed"] = 5
	end
elseif skillType == 420 then
	if skillID == 4201004 then -- 스틸
		effectTable["effect"] = "3cfea62b5b734f93b43c1343007c5e85"
		effectTable["effects"] = {{"bc8884dc5797493794bfbfa2ffe28965", -1}}
		effectTable["hit"] = "0fab48bd885843feb9e0be73a005ac67"
		effectTable["useSound"] = "934e8d9af9ec4b10a9cc04a87455ef02"
		-- b4d442e40f544acc8614d96f305cbca4 스턴
	elseif skillID == 4201005 then -- 새비지 블로우
		effectTable["effect"] = "aa958a2ea88e4d9bba02dc46df4199da"
		effectTable["hit"] = "9695e4696cca4d2aa2ccd3d257698e35"
		effectTable["hitSound"] = "23250468023a4767b32611f2fd8ec49b"
		effectTable["useSound"] = "3c136eddf6934f6cb35fa695b816199e"
		--effectTable["attackDelay"] = 150
	end
elseif skillType == 421 then
	if skillID == 4211002 then -- 어썰터
		effectTable["posEffect"] = "b506cfb233c2439a8da1a73fd5abac19"
		effectTable["effect"] = "4bdb8626bdda428a89d0ffdda8bb48e9"
		effectTable["hit"] = "e1211482889e4f39af70382f925c3aff"
		effectTable["useSound"] = "f0c32373ad7c4129b8e280f1e8ec1229"
	elseif skillID == 4211004 then -- 시브즈
		effectTable["effect"] = "aad57299cbca426fbfcbbd58389bb3a3"
		effectTable["useSound"] = "13789d754c964f538716ef3894d97e54"
		effectTable["hitEffects"] = {"7d0138787b1a4947af646db9eebc58a9", "3951472046dc413e8d3e58babe314d8d",
			"bee34a7c084a4a208d740a02f5688a89", "21f8433d3956421dba7206d0413c7fcc",
			"364b4e59f06a42a29faa1644bb82b7fc", "8c5743a8abc04b06af6a43f2d171c5c6",
		}
		effectTable["nextHitDelay"] = 100
	elseif skillID == 4211006 then -- 메소 익스플로전
		effectTable["effect"] = "a648d99aff094089a1a88b1062b6313f"
		effectTable["useSound"] = "450bcd83df174d82bda0e3bcb512ad5f"
	end
elseif skillType == 412 then
	if skillID == 4121007 then -- 트리플 스로우
		effectTable["base"] = 1
		effectTable["effect"] = "57ed09e2b50a440cbf37c07ec7a7551e"
		effectTable["hit"] = "50f17cdc93e84047a0d33740a9dc0721"
		effectTable["useSound"] = "1ed91489bdb943a29a0c67674144dd71"
		effectTable["hitSound"] = "e25ca7db9cbb40e58d89125c539defb2"
		effectTable["useSounds"] = {_MaplePreferencesLogic.WeaponTGloveSound}
		effectTable["countSound"] = "a409e66cd6844e2cb4aaa2f2bb9d0530"
	end
elseif skillType == 422 then
	if skillID == 4221001 then -- 암살
		effectTable["effect"] = "858f70ee2a8e4a06a5880efc41bbbfe3"
		effectTable["fEffect"] = "5c14a21b90f640b9af04d8cfb8b379ec"
		effectTable["useSound"] = "80bf12d6373a4889bf2f51c49e7af837"
		effectTable["baseHitDelay"] = 760 -- 660
		effectTable["attackDelay"] = 360 --480
	elseif skillID == 4221007 then -- 부메랑 스탭
		effectTable["effect"] = "3ad556d9a8774330a137231745449ab0"
		effectTable["hit"] = "0cf7ab1df23d4dae950a7ee355b22447"
		effectTable["useSound"] = "d660881ad7fb4124b029172169b0c918"
		effectTable["hitSound"] = "092bda6cfb7d400b9d19dbfcf1a81ca5"
		effectTable["baseHitDelay"] = 320 -- 360
		effectTable["attackDelay"] = 390 -- 420
	end
elseif skillType == 500 then
	if skillID == 5001001 then -- 스트레이프
		effectTable["effect"] = "799cacb60dbb40a4a58742eebeabcaeb"
		effectTable["hit"] = "fc00203f4f4743dbbfb4a0aa4838d239"
		effectTable["useSound"] = "4f9109dd3ac748b8b693559073a9a45e"
		effectTable["hitSound"] = "4bd1ba2e930e4e12b09f50b085b6afe2"
	elseif skillID == 5001002 then -- 썸머솔트
		effectTable["effect"] = "2f20fbca53944a819e61d672d7721a1b"
		effectTable["hit"] = "37dc69cd1f8247f29a1cb1c108efdd2a"
		effectTable["useSound"] = "85398b7f1a5340469034ff1f67e6b412"
		effectTable["hitSound"] = "1b54e03352ae4430ae39be54d2ee88f4"
	elseif skillID == 5001003 then -- 더블 파이어
		effectTable["effect"] = "41cfaa1692724928b35006da5cdb8f9f"
		effectTable["ball"] = "a9c015642a6940fd8c27bee3bba5ad69"
		effectTable["hit"] = "03b90f71c2ef49c4a4a64783c25955ca"
		effectTable["useSound"] = "1a1a96488cd74c43a2bbad196040ddcf"
		effectTable["hitSound"] = "7699c1d81ffd4c68a52ab0ce55daf2ad"
	end
elseif skillType == 510 then
	if skillID == 5101002 then -- 백스핀 블로우
		effectTable["effect"] = "370724adf6b3489ca0cf9eae78610ded"
		effectTable["effects"] = {{"8b579a127a0e43d1977e83c533d5998b", -1}}
		effectTable["hit"] = "0fd3b522447642e8b2e3d12185046e0d"
		effectTable["useSound"] = "b50bcd564f50442b953b794493b03be4"
		effectTable["hitSound"] = "b6f0d35c10284ff5884fbf729ed3a279"
		--effectTable["useSounds"] = {_MaplePreferencesLogic.WeaponTGloveSound}
	elseif skillID == 5101003 then -- 더블 어퍼
		effectTable["effect"] = "b7be897176254f1cadd1f411efc65f00"
		effectTable["hit"] = "837f198b6ed542e8810ce5cac0fddac7"
		effectTable["useSound"] = "279ff1b6b71540438f5ecd6d829c545b"
		effectTable["hitSound"] = "4adfacf621844465ae8aaf0416de6d81"
		--effectTable["useSounds"] = {_MaplePreferencesLogic.WeaponTGloveSound}
	elseif skillID == 5101004 then -- 스크류 펀치
		effectTable["posEffect"] = "3e697f54a546468988bc8096947156d0"
		effectTable["hit"] = "ce9b70e57eff48b99efafc9e8393f58c"
		--effectTable["useSound"] = "6d9d7f0d0c5e4b8f891788722aff5395" -- 리소스에 있는 것, 소리가 평타로 들림
		effectTable["useSound"] = _MaplePreferencesLogic.WeaponKnuckleSound
		effectTable["hitSound"] = "1b536a49aabb430ca40a3e39c4f1a986"
		effectTable["baseHitDelay"] = 0
		effectTable["nextHitDelay"] = 0
	end
elseif skillType == 511 then
	if skillID == 5111002 then -- 에너지 버스터
		effectTable["effect"] = "e7c007f6c899468d9e07e3707c62394d"
		effectTable["hit"] = "ba71230fdb264c3bb169857783bb9424"
		effectTable["hitSound"] = "1b061d16c3394dbf8934bfceecd1bd89"
		effectTable["useSound"] = "8d46035b5ddd4a79967f74cbba21b66a"
	elseif skillID == 5111004 then -- 에너지 드레인
		effectTable["effect"] = "e1d3766e1292403faa8797aef34dbb61"
		effectTable["head"] = 1
		effectTable["hit"] = "6654c10c3b204cb1844726562e5c888b"
		effectTable["hitSound"] = "8ce287f4dbe04fdcbb134ebe5ba15ed7"
		effectTable["useSound"] = "d900f49224df48e39a5c8149c2366a0e"
	elseif skillID == 5111006 then -- 쇼크웨이브
		effectTable["specialEffect"] = "shockwave"
		effectTable["hit"] = "041844c141814d249ad7f130249400e3"
		effectTable["effect"] = "a5fd51c1b1b743d1a70b180aa5796435"
		effectTable["hitSound"] = "20a66c70d1cc427ca4c4e18d755c34a0"
		effectTable["useSound"] = "0072eb27080e4d49b1dc52515912eacc"
		effectTable["baseHitDelay"] = 1430
	end
elseif skillType == 512 then
	if skillID == 5121001 then -- 드래곤 스트라이크
		effectTable["fixEffect"] = {{"491168ed944046298842489e3a8a4ab5", -1}}
		effectTable["hit"] = "b7d4cf8a2b904507a0b3a3995cf3cb5e"
		effectTable["hitSound"] = "bca805377974465a80516b4149b4d444"
		effectTable["useSound"] = "e14d46962b194ad6b36a2bebefcb4fe8"
	elseif skillID == 5121002 then -- 에너지 오브
		effectTable["effect"] = "8a33692b0a56423d92fa396ffe92f09f"
		effectTable["effects"] = {{"71ee20d1aa604d119a19286e7113e55d", -1}}
		effectTable["hit"] = "d7704217d8f547c1825d48d36aaa45f8"
		--effectTable["chainBall"] = "6b0a100e41eb45ccab303ce074f69a22"
		effectTable["hitSound"] = "e41edb00c73545e3a5ab5da0801a87ac"
		effectTable["useSound"] = "c47c266c9e4f44a8ab5482016423f2bd"
		effectTable["baseHitDelay"] = 820
	elseif skillID == 5121004 then -- 데몰리션
		effectTable["hits"] = {"c5d8133329524d84b8cecf6629e69880"}
		effectTable["useSounds"] = {"a352a348d9b047c0bc2eae538708b982", "a3d5afcbaea8495dac79f34a0091744b"}
		effectTable["fixHitDelay"] = 360
		effectTable["attackDelay"] = 270
	elseif skillID == 5121005 then -- 스내치
		effectTable["effect"] = "e0c15af3a06448a7ae78b25e775d1626"
		effectTable["hit"] = "4723c0139ffb4314b0e777ecf82c7633"
		effectTable["hitSound"] = "d400ec1a0e79438eb2243294237f8c74"
		effectTable["useSound"] = "b6bf37718d0449eaa8538ebfddbb0c47"
	elseif skillID == 5121007 then -- 피스트
		effectTable["effect"] = "87c0a1595be24962a5724d0861627a05"
		effectTable["hits"] = {"8a3004183d50427fa61c851265af2ba8", "0e29b862a774465ab01546a67c4a9fee", "1c8d249322674039ac60b1cefc14545b"}
		--effectTable["hitSound"] = "2d5ad8f672ae4fea902800b2179f4025"
		effectTable["useSounds"] = {"2260ff815600452a8f05f9b3d7e7cd71", "2d5ad8f672ae4fea902800b2179f4025"}
		effectTable["fixHitDelay"] = 360
		effectTable["attackDelay"] = 270
	end
elseif skillType == 520 then
	if skillID == 5201001 then -- 인비지블샷
		effectTable["hit"] = "8e747abe213140ea83375bcb8218f012"
		effectTable["useSound"] = _MaplePreferencesLogic.WeaponGunSound
		effectTable["hitSound"] = "8cc22453577d4e0e9ce3be3b9436b7b4"
		effectTable["noRange"] = 1
	elseif skillID == 5201004 then -- 페이크 샷
		effectTable["effect"] = "891a7911fc9547b09962637758e71c99"
		effectTable["hit"] = "fdebf38a84e848a3b2c8bd02ec95d596"
		effectTable["useSound"] = "3e58ae49f88546beb9f921102160531c"
		effectTable["hitSound"] = "2f6375873db34b099bfeed581341df0c"
	elseif skillID == 5201006 then -- 백스텝샷
		effectTable["fixEffect"] = {{"3c7f9962b4c0440b9b700ad6de6389f8", 1}}
		effectTable["useSound"] = "2e47b3c180744c3cb5c1f815f736e858"
	end
elseif skillType == 521 then
	if skillID == 5210000 then -- 트리플 파이어
		effectTable["effect"] = "8d0615e15a2f40ea961aa639e4b60df6"
		effectTable["ball"] = "a9c015642a6940fd8c27bee3bba5ad69"
		effectTable["hit"] = "03b90f71c2ef49c4a4a64783c25955ca"
		effectTable["useSound"] = "4ade2b2841584af6bb2cdd55491cb4f9"
		effectTable["hitSound"] = "e001bd6c2c704deaadb028c05089b2dd"
	elseif skillID == 5211004 then -- 파이어 버너
		effectTable["fixEffect"] = {{"b29e521fef4e4e75a74e7c2963263dcd", 1}}
		effectTable["hit"] = "03b594e8411848b687672a9b14344423"
		effectTable["useSound"] = "6bef43d115824aa3b4a6c679042d587b"
		effectTable["hitSound"] = "4185279d7a3143d89d6df09d3b08e03b"
		effectTable["noRange"] = 1
	elseif skillID == 5211005 then -- 쿨링 이펙트
		effectTable["fixEffect"] = {{"241287c547e24321baaae5ce4859228b", 1}}
		effectTable["hit"] = "f250864f781d45d182253af39aba33b8"
		effectTable["useSound"] = "1899ae9b45fd4d03bfeb1cc29d5f7dbc"
		effectTable["hitSound"] = "47ee9d77675f4573914c76d771b643ee"
		effectTable["noRange"] = 1
	elseif skillID == 5211006 then -- 호밍
		effectTable["effect"] = "78900f134ffb410fa9fbec3c127e8dcd"
		effectTable["ball"] = "6b26491839de4a5bbf190e450c9ac391"
		effectTable["hit"] = "fdad089944554bac9cfd16a02862aaf1"
		effectTable["useSound"] = "e5c99860742b4bef968675cb05b001c0"
		effectTable["hitSound"] = "4ddab2bb34a04845939a4ac31e0b4a83"
		effectTable["baseDelay"] = 720
	end
elseif skillType == 522 then
	if skillID == 5221003 then -- 에어 스트라이크
		effectTable["specialEffect"] = "airstrike"
		effectTable["effect"] = "2afa28afa1474f008a98be45b25c37b6"
		effectTable["hit"] = "1828155f83c74fcf8844a0935948f96c"
		effectTable["useSound"] = "111649328ef842c487594cd0f4e8dbc4"
		effectTable["hitSound"] = "185d756b79c54a5bad4e15d225d2f13f"
		effectTable["noRange"] = 1
		effectTable["effectSpeed"] = 1
		effectTable["baseHitDelay"] = 1725
		--effectTable["nextHitDelay"] = 75
	elseif skillID == 5221004 then -- 래피드 파이어
		effectTable["hitSound"] = "83a7bbd854fc4bddaf79af3de916f7de"
		effectTable["hit"] = "e8cb3036ac794e4eb630e1cb3d1834c7"
	elseif skillID == 5221007 then -- 배틀쉽 캐논
		effectTable["hitSound"] = "33ba61d0010e4f13ae478cd0c04c6990"
		effectTable["hit"] = "009fc70bf4504ea8a925af2728b608b9"
		effectTable["useSound"] = "e870afc973f74d4f8b8a65b78c450057"
		effectTable["ball"] = "818355676dd34080bf48a340c5095861"
	elseif skillID == 5221008 then -- 배틀쉽 토르페도
		effectTable["hitSound"] = "72d769da136c448b9ed09285417af9a6"
		effectTable["hit"] = "13a3bd08a1de44ceb961be6978ccb391"
		effectTable["useSound"] = "b665af5ba3294735b8c71dd96a17b596"
		effectTable["ball"] = "7e4c1bfcab894faa904ba7d9128b0df5"
		effectTable["noBallEffect"] = 2
	elseif skillID == 5220011 then -- 어드밴스드 호밍
		effectTable["effect"] = "428b27bcd15047209e27acaa76a18fad"
		effectTable["ball"] = "5d69c6f7ba6f4a59b90bf52c56df9798"
		effectTable["hit"] = "28209c929f7b455ab54a1c571d4afaee"
		effectTable["useSound"] = "e5c99860742b4bef968675cb05b001c0"
		effectTable["hitSound"] = "4ddab2bb34a04845939a4ac31e0b4a83"
		effectTable["baseDelay"] = 720
		
		--호밍 aaf9764fc3fb4c89abc7c6fb0394e1f5
		--어드호밍 d78fb4a901fb417381ed7a76f184c0e4
	end
end
return effectTable
end