return function (self,skillID,level) 
local effectTable = {}
local skillType = math.floor(skillID / 10000)
if skillType == 0 then
	if skillID == 1001 then -- 회복
		effectTable["effect"] = "0e2371c3df5247598c285ed69703fcd0"
		effectTable["useSound"] = "4258c4ecd34643e8854a5f23ac84fb34"
	elseif skillID == 1002 then -- 민첩한 몸놀림
		effectTable["effect"] = "288b2ca13ae34efc987c49ac0bb22f79"
		effectTable["useSound"] = "3c90a0219abf42129bb790d773a1dc2f"
	end
elseif skillType == 100 then
	if skillID == 1001003 then -- 아이언 바디
		effectTable["ironBody"] = 1
		effectTable["useSound"] = "4869d049227e44c8bb49b6573a95c48c"
	end
elseif skillType == 110 then
	if skillID == 1100002 or skillID == 1100003 then -- 파이널 어택
		effectTable["effect"] = "a500a3572e7b4050a30ca29fd1978382"
		effectTable["useSound"] = "2bd24edd72b146a895c22a19e1fa79d7"
	elseif skillID == 1101004 or skillID == 1101005 then -- 부스터	
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 1101006 then -- 분노
		effectTable["effect"] = "498d16e0016e4095ba70deeb01ce5631"
		effectTable["affected"] = "6cec580e2beb4370907a23ae717eb115"
		effectTable["useSound"] = "fd09c63873d84a85a62cd3febd8f9325"
	elseif skillID == 1101007 then -- 파워 가드
		effectTable["effect"] = "442fa287c9df4a2e93a2cc87aba7580b"
		effectTable["effects"] = {{"38a5030bf13e4f898f58cbc28ffcf6fb", -1}}
		effectTable["useSound"] = "764e09a49fa04d239b2c3f9c02aaa2d9"
	end
elseif skillType == 120 then
	if skillID == 1200002 or skillID == 1200003 then -- 파이널 어택
		effectTable["effect"] = "a500a3572e7b4050a30ca29fd1978382"
		effectTable["useSound"] = "2bd24edd72b146a895c22a19e1fa79d7"
	elseif skillID == 1201004 or skillID == 1201005 then -- 부스터	
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 1201006 then -- 위협
		effectTable["effect"] = "b1cebbff468a4f0dae2be337ca1d3b44"
		effectTable["useSound"] = "e555e9601a414cd798599a9fff6ba9db"
	elseif skillID == 1201007 then -- 파워 가드
		effectTable["effect"] = "442fa287c9df4a2e93a2cc87aba7580b"
		effectTable["effects"] = {{"38a5030bf13e4f898f58cbc28ffcf6fb", -1}}
		effectTable["useSound"] = "764e09a49fa04d239b2c3f9c02aaa2d9"
	end
elseif skillType == 130 then
	if skillID == 1300002 or skillID == 1300003 then -- 파이널 어택
		effectTable["effect"] = "a500a3572e7b4050a30ca29fd1978382"
		effectTable["useSound"] = "2bd24edd72b146a895c22a19e1fa79d7"
	elseif skillID == 1301004 or skillID == 1301005 then -- 부스터	
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 1301006 then -- 아이언 월
		effectTable["effect"] = "3fed75e14e20453f92b5bafe4f2a6802"
		effectTable["affected"] = "e4f2bf39e6474080bc0256106f6c73b7"
		effectTable["useSound"] = "b087ef903fe942e79010aa1b3c980b57"
	elseif skillID == 1301007 then -- 하이퍼 바디
		effectTable["effect"] = "fd3fd489cad3428282a0c6dc00da151f"
		effectTable["affected"] = "a9425cc90bae4baaa344142fd667fb3e"
		effectTable["useSound"] = "03048ff6f36445e69734a942c35cec67"
	end
elseif skillType == 111 then
	if skillID == 1111002 then -- 콤보 어택
		effectTable["effect"] = "19e3ba3ab994431b81a3d4ee7a1b86e0"
		effectTable["useSound"] = "4b254b65adbe4df4885acbe2e2fa3671"
	end
elseif skillType == 121 then
	if skillID == 1211003 or skillID == 1211004 then -- 프레임 차지
		effectTable["effect"] = "9b9b7e5e52c840f2ace76ffb44257a44"
		effectTable["useSound"] = "e448a36171c043ea87774bbe559b0e77"
	elseif skillID == 1211005 or skillID == 1211006 then -- 아이스 차지
		effectTable["effect"] = "846af5c5538c4b80b3c411ec6539d1a6"
		effectTable["useSound"] = "d6caa663d7c94bab9364d67c9eef6198"
	elseif skillID == 1211007 or skillID == 1211008 then -- 라이트닝 차지
		effectTable["effect"] = "e9a24aa3ea8743438c63bce9df305226"
		effectTable["useSound"] = "d62e9d3c780b4c1993464636befb1839"
	end
elseif skillType == 131 then
	if skillID == 1311008 then -- 드래곤 블러드
		effectTable["effect"] = "da41e338f399473c96f2019e84c3d99e"
		effectTable["useSound"] = "da0f787f0c10461c8c5ddfc12e18e08b"
	end
elseif skillType == 112 then
	if skillID == 1121000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 1121002 then -- 스탠스
		effectTable["effect"] = "ccb3a9be6adc41cab601c36ddbb7f259"
		effectTable["useSound"] = "00858ec8dfd54ecd9a3fff804607cff9"
	elseif skillID == 1121010 then -- 인레이지
		effectTable["effect"] = "4706e268789643b9ad49180748b86b6e"
		effectTable["useSound"] = "eaf9bac16cc6420ca50aa46401f385a4"
	elseif skillID == 1121011 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 122 then
	if skillID == 1221000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 1221002 then -- 스탠스
		effectTable["effect"] = "ccb3a9be6adc41cab601c36ddbb7f259"
		effectTable["useSound"] = "00858ec8dfd54ecd9a3fff804607cff9"
	elseif skillID == 1221003 or skillID == 1221004 then -- 홀리 차지
		effectTable["effect"] = "cef2d6659a1343eca9b6512f81cd2452"
		effectTable["useSound"] = "f8f89439d00a40149a884b20022c12a2"
	elseif skillID == 1221012 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 132 then
	if skillID == 1321000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 1321002 then -- 스탠스
		effectTable["effect"] = "ccb3a9be6adc41cab601c36ddbb7f259"
		effectTable["useSound"] = "00858ec8dfd54ecd9a3fff804607cff9"
	elseif skillID == 1321007 then -- 비홀더
		effectTable["useSound"] = "5e133009681947c1a96c2382d79a2802"
	elseif skillID == 1321010 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 200 then
	if skillID == 2001002 then -- 매직 가드
		effectTable["effect"] = "3878fb0f62bf43a48cd9f43332490315"
		effectTable["useSound"] = "54da9a7be69645a0a75fd4e738020a2b"
	elseif skillID == 2001003 then -- 매직 아머
		effectTable["ironBody"] = 1
		effectTable["useSound"] = "000a4795f3df45759f399479b0c17503"
	end
elseif skillType == 210 then
	if skillID == 2101001 then -- 메디테이션
		effectTable["effect"] = "1adf260528de4c9295bf0bd90f73ed6e"
		effectTable["affected"] = "c7d4280f6f114c8db7d99951c756419e"
		effectTable["useSound"] = "3fa020cfd70f495c89c39fd3a3dd480a"
	elseif skillID == 2101003 then -- 슬로우
		effectTable["effect"] = "313cb7c8725a49b6b54162c60bf36b52"
		effectTable["useSound"] = "42275f5af1f7421abda3e1d57e0b6c04"
	end
elseif skillType == 220 then
	if skillID == 2201001 then -- 메디테이션
		effectTable["effect"] = "1adf260528de4c9295bf0bd90f73ed6e"
		effectTable["affected"] = "c7d4280f6f114c8db7d99951c756419e"
		effectTable["useSound"] = "3fa020cfd70f495c89c39fd3a3dd480a"
	elseif skillID == 2201003 then -- 슬로우
		effectTable["effect"] = "313cb7c8725a49b6b54162c60bf36b52"
		effectTable["useSound"] = "42275f5af1f7421abda3e1d57e0b6c04"
	end
elseif skillType == 211 then
	if skillID == 2111004 then -- 씰
		effectTable["effect"] = "6de870b932e84c99aab83c19a3f79c70"
		effectTable["useSound"] = "400d7f0d81a24a92a00d6d78c47be0da"
	elseif skillID == 2111005 then -- 매직 부스터
		effectTable["effect"] = "5040fa5559ce495a8bc554d70224bd33"
		effectTable["useSound"] = "04d5a63d24784a2b9a9fbfda60f32e97"
	end
elseif skillType == 221 then
	if skillID == 2211004 then -- 씰
		effectTable["effect"] = "6de870b932e84c99aab83c19a3f79c70"
		effectTable["useSound"] = "400d7f0d81a24a92a00d6d78c47be0da"
	elseif skillID == 2211005 then -- 매직 부스터
		effectTable["effect"] = "5040fa5559ce495a8bc554d70224bd33"
		effectTable["useSound"] = "04d5a63d24784a2b9a9fbfda60f32e97"
	end
elseif skillType == 230 then
	if skillID == 2301003 then -- 인빈서블
		effectTable["effect"] = "6604b2231a71412f8af7e3fe8cf829b5"
		effectTable["useSound"] = "61cdedc552e940188a5ea88166ffcf90"
	elseif skillID == 2301004 then -- 블레스
		effectTable["effect"] = "2363033f3f494b5482a1d3ce906c69ca"
		effectTable["affected"] = "9fa53dfd51f141e7a94a6221197d010d"
		effectTable["useSound"] = "32a20f0563a74b19abcce644c90e2d23"
	end
elseif skillType == 231 then
	if skillID == 2311001 then -- 디스펠
		effectTable["effect"] = "d56524d35b65477fb59b38e2c541cb4d"
		effectTable["mobAffected"] = "1064b88e9c2f45cdaaf2c85bc338613e"
		effectTable["affected"] = "63f7e2a0c91442d59a30bb6279f06c00"
		effectTable["useSound"] = "c012fd7b9582490aa89837d9fbf6455a"
	elseif skillID == 2311002 then -- 미스틱 도어
		effectTable["effect"] = "04bf8a7857c14a3890d01382cbe9bef9"
		effectTable["useSound"] = "27092bb743884e42b6955403d59e1e05"
	elseif skillID == 2311003 then -- 홀리 심볼
		effectTable["effect"] = "ad34352ccf364aba8512cc2004693e87"
		effectTable["affected"] = "d75e7194f7854a0c81a2785d0b34ec9b"
		effectTable["useSound"] = "f536d54e6742405c86fd1aaae5106d3b"
	elseif skillID == 2311006 then -- 서먼 드래곤
		effectTable["useSound"] = "7abb8647e9fc43059a8eb93f47b4f988"
	end
elseif skillType == 212 then
	if skillID == 2121000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 2121002 then -- 마나 리플렉션
		effectTable["effect"] = "2787b88d63d24dfe90d97822b0d7bff1"
		effectTable["useSound"] = "6e16ac750a474000b22a264f2c555301"
	elseif skillID == 2121004 then -- 인피니티
		effectTable["effects"] = {
			{"e990477dda5445d8a29ba5b4e24aa28c", 1},
			{"9094fe11f37e428ba61b28237fc8d8de", -1},
		}
		effectTable["useSound"] = "f2e54b0c13e2494b8aed8f18cde28cda"
	elseif skillID == 2121005 then -- 엘퀴네스
		effectTable["useSound"] = "26f62380a10a49678c5ef66f40913bed"
	elseif skillID == 2121008 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 222 then
	if skillID == 2221000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 2221002 then -- 마나 리플렉션
		effectTable["effect"] = "2787b88d63d24dfe90d97822b0d7bff1"
		effectTable["useSound"] = "6e16ac750a474000b22a264f2c555301"
	elseif skillID == 2221004 then -- 인피니티
		effectTable["effects"] = {
			{"e990477dda5445d8a29ba5b4e24aa28c", 1},
			{"9094fe11f37e428ba61b28237fc8d8de", -1},
		}
		effectTable["useSound"] = "f2e54b0c13e2494b8aed8f18cde28cda"
	elseif skillID == 2221005 then -- 이프리트
		effectTable["useSound"] = "46f237b295794976b1b73b30877fad12"
	elseif skillID == 2221008 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 232 then
	if skillID == 2321000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 2321002 then -- 마나 리플렉션
		effectTable["effect"] = "2787b88d63d24dfe90d97822b0d7bff1"
		effectTable["useSound"] = "6e16ac750a474000b22a264f2c555301"
	elseif skillID == 2321003 then -- 바하뮤트
		effectTable["useSound"] = "ff54ce93f712444ba93ceb323ba61788"
	elseif skillID == 2321004 then -- 인피니티
		effectTable["effects"] = {
			{"e990477dda5445d8a29ba5b4e24aa28c", 1},
			{"9094fe11f37e428ba61b28237fc8d8de", -1},
		}
		effectTable["useSound"] = "f2e54b0c13e2494b8aed8f18cde28cda"
	elseif skillID == 2321005 then -- 홀리 실드
		effectTable["affected"] = "1d8c383d253546cb9b490d6f352eb1e1"
		effectTable["effect"] = "02d77756a8734784829b2acd89f5a1d9"
		effectTable["useSound"] = "3301b8e7072c4cfbb2ac91b064d99dbc"
	elseif skillID == 2321006 then -- 리저렉션
		effectTable["affected"] = "41b04525b897482490a8340fd3eaf773"
		effectTable["effect"] = "a64938eb6d9b4a3cbe027534597f7fc7"
		effectTable["useSound"] = "fda4b4350ef14f07b2de294974efe1aa"
	elseif skillID == 2321009 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 300 then
	if skillID == 3001003 then -- 포커스
		effectTable["effect"] = "11ffdd22135d4a7bace5b475c3844974"
		effectTable["useSound"] = "3466cb77558b4d52ad92f096dbcc78cd"
	end
elseif skillType == 310 then
	if skillID == 3100001 then -- 파이널 어택
		effectTable["effect"] = "9d6bd0ea41994cbc95d0c123cb48ad29"
		effectTable["useSound"] = "37a4b8108c5846e3b7acd9c700bf0648"
	elseif skillID == 3101002 then -- 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 3101004 then -- 소울 애로우
		effectTable["effect"] = "84e97e04076042e7bf9ee3a9bf218640"
		effectTable["useSound"] = "53329435924b4595a4785759fe21ce9f"
	end
elseif skillType == 311 then
	if skillID == 3111005 then -- 실버 호크
		effectTable["useSound"] = "02d48d9a5d664670a61593c29cd16123"
	end
elseif skillType == 320 then
	if skillID == 3200001 then -- 파이널 어택
		effectTable["effect"] = "9d6bd0ea41994cbc95d0c123cb48ad29"
		effectTable["useSound"] = "37a4b8108c5846e3b7acd9c700bf0648"
	elseif skillID == 3201002 then -- 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 3201004 then -- 소울 애로우
		effectTable["effect"] = "84e97e04076042e7bf9ee3a9bf218640"
		effectTable["useSound"] = "53329435924b4595a4785759fe21ce9f"
	end
elseif skillType == 321 then
	if skillID == 3211005 then -- 골든 이글
		effectTable["useSound"] = "02d48d9a5d664670a61593c29cd16123"
	end
elseif skillType == 312 then
	if skillID == 3121000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 3121002 then -- 샤프 아이즈
		effectTable["effect"] = "126732ab375d4ada97cab39dc78ddcfa"
		effectTable["affected"] = "23e28c9d48ea42d595340a6971f164df"
		effectTable["useSound"] = "2265b1a64e564ef09a3453e3c055dd34"
	elseif skillID == 3121006 then -- 피닉스
		effectTable["useSound"] = "b61bbe3bf6974d2fb0958868cac999fb"
	elseif skillID == 3121007 then -- 햄스트링
		effectTable["effect"] = "36b9f5a48b4743049d6f080820bf3ba6"
		effectTable["useSound"] = "5ce4a372e39a4fe28a9a6b1804bdbac0"
	elseif skillID == 3121008 then -- 집중
		effectTable["effect"] = "edc954a85374489fbc78b13a0851e2cc"
		effectTable["useSound"] = "26448161151448aa927b82ae58333e51"
	elseif skillID == 3121009 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 322 then
	if skillID == 3221000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 3221002 then -- 샤프 아이즈
		effectTable["effect"] = "126732ab375d4ada97cab39dc78ddcfa"
		effectTable["affected"] = "23e28c9d48ea42d595340a6971f164df"
		effectTable["useSound"] = "2265b1a64e564ef09a3453e3c055dd34"
	elseif skillID == 3221005 then -- 프리져
		effectTable["useSound"] = "b61bbe3bf6974d2fb0958868cac999fb"
	elseif skillID == 3221006 then -- 블라인드
		effectTable["effect"] = "85b455dba19546bb961a245270273bf8"
		effectTable["useSound"] = "4e24c14a7c364f068acfd56b56d5f918"
	elseif skillID == 3221008 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 400 then
	if skillID == 4001003 then -- 다크사이트
		effectTable["effect"] = "14850c1b9eb941e9879cc9085b4e3bdc"
		effectTable["useSound"] = "be18b6cf4ef54178b6bd2bde33bddd27"
	end
elseif skillType == 410 then
	if skillID == 4101003 then -- 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 4101004 then -- 헤이스트
		effectTable["effect"] = "049c5a6b0ba24fce98263b2e83dc4c01"
		effectTable["affected"] = "009f23ef00f54cb98723740af3d848db"
		effectTable["useSound"] = "fe0019fe2bd74a548fd4fa84895f7f5f"
	end
elseif skillType == 411 then
	if skillID == 4111001 then -- 메소업
		effectTable["effect"] = "e7ed423400ac41d7a3ace02c016f17d0"
		effectTable["effects"] = {{"7691ddde9ac3429a99f039f29a6ff2b7", -1}}
		effectTable["affected"] = "a593880b53c449f8ae6767e7f0f2a7fb"
		effectTable["useSound"] = "5ebe638220c74a29a59a4d6b632205fb"
	elseif skillID == 4111002 then -- 쉐도우 파트너
		effectTable["effect"] = "7fab246b200a4dacb4bc9a5aeb7bc0b9"
		effectTable["effects"] = {{"0ea8d5caaa694fa2a35d05c0231c9a2e", -1}}
		effectTable["useSound"] = "6c7c28167b9049419435cc53001cef0c"
	end
elseif skillType == 420 then
	if skillID == 4201002 then -- 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 4201003 then -- 헤이스트
		effectTable["effect"] = "049c5a6b0ba24fce98263b2e83dc4c01"
		effectTable["affected"] = "009f23ef00f54cb98723740af3d848db"
		effectTable["useSound"] = "fe0019fe2bd74a548fd4fa84895f7f5f"
	end
elseif skillType == 421 then
	if skillID == 4211003 then -- 픽파킷
		effectTable["effect"] = "fac4b6f879c24f2bb43643a49e8360f5"
		effectTable["useSound"] = "eb009eb4ce0443068bbec5369f256b35"
	elseif skillID == 4211005 then -- 메소 가드
		effectTable["effect"] = "b74fb7f7b6a04d7ab2fcf577f3032b29"
		effectTable["useSound"] = "799e580a8ea84be2aa3f5776970971fb"
	end
elseif skillType == 412 then
	if skillID == 4121000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 4121004 then -- 닌자 앰부쉬
		effectTable["effect"] = "cf117d0962c94be5b3a08126a161e574"
		effectTable["useSound"] = "361953fca4b24c398c238c3b300495d5"
	elseif skillID == 4121006 then -- 스피릿 자벨린
		effectTable["effect"] = "3c84e20fe91d4a7c98597556dc1a46dc"
		effectTable["useSound"] = "8bc5a241032b4311a4cdd49946eda8d8"
	elseif skillID == 4121009 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 422 then
	if skillID == 4221000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 4221004 then -- 닌자 앰부쉬
		effectTable["effect"] = "cf117d0962c94be5b3a08126a161e574"
		effectTable["useSound"] = "361953fca4b24c398c238c3b300495d5"
	elseif skillID == 4221008 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
elseif skillType == 500 then
	if skillID == 5001005 then -- 대쉬
		effectTable["effect"] = "05b6580a9b194d2989eeeb57642173de"
		effectTable["effects"] = {{"07b3441c42a04d2a8520eb5e523fbe57", -1}}
		effectTable["special"] = "10c369ff8111466783874e64d4951ac5"
		effectTable["useSound"] = "d63720e2f7434b5d9faeaefb236282a2"
	end
elseif skillType == 510 then
	if skillID == 5101005 then -- MP 리커버리
		effectTable["effect"] = "7fab3a2764d349089e0c1324d31905a5"
		effectTable["useSound"] = "7e41fc22835744d28177c0f3a86b41c0"
	elseif skillID == 5101006 then -- 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	elseif skillID == 5101007 then -- 오크통
		
	end
elseif skillType == 511 then
	if skillID == 5111005 then -- 트랜스폼
		effectTable["useSound"] = "13b0825cc5b44c5c99b2a14725dffe0a"
	end
elseif skillType == 520 then
	if skillID == 5201003 then -- 건 부스터
		effectTable["effect"] = "6dd49f7866264597ae71c151f04bc335"
		effectTable["useSound"] = "7f0864498ba1447db950bab868b9173f"
	end
elseif skillType == 521 then
	if skillID == 5211001 then -- 옥토퍼스
		effectTable["useSound"] = "c0b38f68091d4b03a2c80e641af2ed72"
	elseif skillID == 5211002 then -- 가비오타
		effectTable["useSound"] = "2f87b4028c4841d3878d98ed2bc7db1e"
	end
elseif skillType == 512 then
	if skillID == 5121000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 5121008 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	elseif skillID == 5121009 then -- 윈드 부스터
		effectTable["effect"] = "f76fde4979184627babc81cdf3254126"
		effectTable["affected"] = "d16a1b39fc654ed5965c321a55424870"
		effectTable["useSound"] = "259a9f7065f941b8bde46645e362819a"
	elseif skillID == 5121010 then -- 타임 리프
		effectTable["effect"] = "280d255d900646b180a302ed10979568"
		effectTable["affected"] = "c734ca4648bb40289ca42d8730e2438d"
		effectTable["useSound"] = "c454d99778eb4838ad367d434a3aad20"
	end
elseif skillType == 522 then
	if skillID == 5221000 then -- 메이플 용사
		effectTable["effects"] = {{"a3cafd0a691c499da8b0f2356b2dd7e5", -1}}
		effectTable["affected"] = "791637fc40ea48a2a2f458e0900f1ceb"
		effectTable["useSound"] = "38de015026a14c0ebe29188a364eff00"
	elseif skillID == 5220002 then -- 서포트 옥토퍼스
		effectTable["useSound"] = "d7290d42957e4582acfae0d71fd621ce"
	elseif skillID == 5221006 then -- 배틀쉽
		effectTable["effects"] = {{"aa7c8e6a75064aefb7a170b63f8ad40b", -1}}
		effectTable["effect"] = "52ea05d56ce442928b24d4013043dff1"
		effectTable["useSound"] = "4cae7563193a41ffbee86200ced23888"
	elseif skillID == 5221010 then -- 용사의 의지
		effectTable["effect"] = "29ac7e5ba0eb45179ec99eb76846325b"
		effectTable["useSound"] = "11271fec9d6842b5b8b0cf67f198869d"
	end
end
return effectTable
end