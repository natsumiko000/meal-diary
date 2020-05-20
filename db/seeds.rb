p 'start user create'

[
	{
		name:  'TEST',
		email: 'test@a.com',
		password: '111111'
	},
	{
		name:  'TEST2',
		email: 'test2@a.com',
		password: '111111'
	},
].each do |user|
	u = User.find_or_initialize_by(email: user[:email])
	u.update(user)
end

p 'finish admin create'
p 'start categories create'

[
	{
		name: '肉類',
		caption: '身体を作る栄養素で重要なたんぱく質が多く含まれている。
		その他にも良質なアミノ酸やビタミンも豊富。',
		image: File.open("./public/img/category1.jpg")
	},
	{
		name: '魚類',
		caption: '魚の油は不飽和脂肪酸であるDHA・EPAが豊富。
		また魚の身にはカルシウムやビタミン、タウリンなどが多く含まれている。',
		image: File.open("./public/img/category2.jpg")
	},
	{
		name: '卵',
		caption: '食物繊維とビタミンC以外のすべての栄養素を含む。
		鶏卵であれば１日１〜２個の摂取が理想的。魚卵は卵類に含まれない。',
		image: File.open("./public/img/category3.jpg")
	},
	{
		name: '大豆製品',
		caption: '脂質、炭水化物、食物繊維、カリウム、カルシウム、マグネシウム、鉄、亜鉛、銅、ビタミン、葉酸など様々な栄養素が含まれる。
		一方、コレステロールは含まれない。',
		image: File.open("./public/img/category4.jpg")
	},
	{
		name: '乳製品',
		caption: 'カルシウムだけではなく、たんぱく質、脂質、炭水化物、ミネラル、ビタミンがバランスよく含まれている。',
		food_group: 'second_group',
		image: File.open("./public/img/category5.jpg")
	},
	{
		name: '海藻類',
		caption: '低カロリーでありながら、ビタミン類、ミネラル、カルシウム、鉄、たんぱく質、食物繊維が豊富。',
		food_group: 'second_group',
		image: File.open("./public/img/category6.jpg")
	},
	{
		name: '緑黄色野菜',
		caption: '切ったときに中身まで色が付いていれば緑黄色野菜。（※例外あり）
		β-カロテンを多く含み、ビタミンＡ効力の大きい。',
		food_group: 'third_group',
		nutrition_type: 'arrange',
		image: File.open("./public/img/category7.jpg")
	},
	{
		name: '淡色野菜',
		caption: '緑黄色野菜に分類されない野菜を一般的に淡色野菜と呼ぶ。
		ミネラルや食物繊維が豊富。',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("./public/img/category8.jpg")
	},
	{
		name: '果物',
		caption: '各種ビタミンをはじめ、ミネラル、食物繊維が豊富。
		さらに健康維持や疾病予防に有効な成分も含む。',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("./public/img/category9.jpg")
	},
	{
		name: '穀類',
		caption: '穀類の主成分は炭水化物。エネルギー源となる重要な栄養。
		『米、小麦、とうもろこし』は世界三大穀物と呼ばれる。',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("./public/img/category10.jpg")
	},
	{
		name: 'イモ類',
		caption: '炭水化物を多く含む一方、食物繊維も多いという特徴がある。
		ビタミンやミネラル、ポリフェノールなども豊富。',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("./public/img/category11.jpg")
	},
	{
		name: '油脂類',
		caption: '必須脂肪酸が含まれており、体の細胞膜の成分やホルモンの材料となっている。
		脂溶性ビタミン（ビタミンA・D・E・Kなど）の吸収にも役立っている。',
		food_group: 'sixth_group',
		nutrition_type: 'energy',
		image: File.open("./public/img/category12.jpg")
	}
].each do |category|
	c = Category.find_or_initialize_by(name: category[:name])
	c.update(category)
	c.image.attach(io: category[:image], filename: 'test.png')
end

p 'finish categories create'
p 'start foods create'

[
	{
		name: '牛肉',
		caption: '牛もも肉：259kcal/100g',
		category_id: '1'
	},
	{
		name: '豚肉',
		caption: '豚もも肉：183kcal/100g',
		category_id: '1'
	},
	{
		name: '鶏肉',
		caption: '鶏もも肉（皮付き）：200kcal/100g',
		category_id: '1'
	},
	{
		name: '合びき肉',
		caption: '111kcal/50g',
		category_id: '1'
	},
	{
		name: 'ロースハム',
		caption: '29kcal/1本（15ｇ）',
		category_id: '1'
	},
	{
		name: 'ウインナーソーセージ',
		caption: '64kcal/1本（20ｇ）',
		category_id: '1'
	},
	{
		name: 'ベーコン',
		caption: '82kcal/1本（20ｇ）',
		category_id: '1'
	},
	{
		name: 'あじ',
		caption: '81kcal/1尾（150g）',
		category_id: '2'
	},
	{
		name: 'さんま',
		caption: '310kcal/1尾（100g）',
		category_id: '2'
	},
	{
		name: '金目鯛',
		caption: '160kcal/1尾（100g）',
		category_id: '2'
	},
	{
		name: 'さば',
		caption: '202kcal/1尾（100g）',
		category_id: '2'
	},
	{
		name: 'さけ',
		caption: '133kcal/1尾（100g）',
		category_id: '2'
	},
	{
		name: 'たらこ',
		caption: '49kcal/1腹（35g）',
		category_id: '2'
	},
	{
		name: 'ちくわ',
		caption: '36kcal/小1本',
		category_id: '2'
	},
	{
		name: 'かまぼこ',
		caption: '19kcal/1切（20g）',
		category_id: '2'
	},
	{
		name: '鶏卵',
		caption: '77kcal/1個（M）、90kcal/1個（L）',
		category_id: '3'
	},
	{
		name: 'うずら卵',
		caption: '15kcal/1個',
		category_id: '3'
	},
	{
		name: '牛乳',
		caption: '141kcal/200ml',
		category_id: '4'
	},
	{
		name: 'ヨーグルト（無糖）',
		caption: '62kcal/100g',
		category_id: '4'
	},
	{
		name: '生クリーム',
		caption: '65kcal/大さじ1（15g）',
		category_id: '4'
	},
	{
		name: 'プロセスチーズ',
		caption: '80kcal/20g',
		category_id: '4'
	},
	{
		name: '豆乳（無調整）',
		caption: '92kcal/200ml',
		category_id: '5'
	},
	{
		name: '納豆',
		caption: '100kcal/1パック（50g）',
		category_id: '5'
	},
	{
		name: '絹ごし豆腐',
		caption: '56kcal/100g',
		category_id: '5'
	},
	{
		name: '木綿豆腐',
		caption: '72kcal/100g',
		category_id: '5'
	},
	{
		name: '油揚げ',
		caption: '77kcal/20g',
		category_id: '5'
	},
	{
		name: '枝豆',
		caption: '135kcal/100g',
		category_id: '5'
	},
	{
		name: '湯葉（生）',
		caption: '69kcal/1枚（30g）',
		category_id: '5'
	},
	{
		name: 'あおのり',
		caption: '164kcal/100g',
		category_id: '6'
	},
	{
		name: '昆布',
		caption: '145kcal/100g',
		category_id: '6'
	},
	{
		name: 'わかめ（生）',
		caption: '16kcal/100g',
		category_id: '6'
	},
	{
		name: 'ひじき',
		caption: '149kcal/100g',
		category_id: '6'
	},
	{
		name: 'もずく',
		caption: '4kcal/100g',
		category_id: '6'
	},
	{
		name: 'にんじん',
		caption: '39kcal/100g',
		category_id: '7'
	},
	{
		name: 'ピーマン',
		caption: '22kcal/100g',
		category_id: '7'
	},
	{
		name: 'トマト',
		caption: '19kcal/100g',
		category_id: '7'
	},
	{
		name: '小松菜',
		caption: '14kcal/100g',
		category_id: '7'
	},
	{
		name: 'かぼちゃ',
		caption: '49kcal/100g',
		category_id: '7'
	},
	{
		name: 'ほうれん草',
		caption: '20kcal/100g',
		category_id: '7'
	},
	{
		name: 'ブロッコリー',
		caption: '33kcal/100g',
		category_id: '7'
	},
	{
		name: '玉ねぎ',
		caption: '37kcal/100g',
		category_id: '8'
	},
	{
		name: 'かぶ',
		caption: '20kcal/100g',
		category_id: '8'
	},
	{
		name: 'キャベツ',
		caption: '23kcal/100g',
		category_id: '8'
	},
	{
		name: 'きゅうり',
		caption: '14kcal/100g',
		category_id: '8'
	},
	{
		name: 'だいこん',
		caption: '18kcal/100g',
		category_id: '8'
	},
	{
		name: 'なす',
		caption: '22kcal/100g',
		category_id: '8'
	},
	{
		name: '白菜',
		caption: '14kcal/100g',
		category_id: '8'
	},
	{
		name: 'レタス',
		caption: '12kcal/100g',
		category_id: '8'
	},
	{
		name: 'れんこん',
		caption: '66kcal/100g',
		category_id: '8'
	},
	{
		name: 'りんご',
		caption: '57kcal/100g',
		category_id: '9'
	},
	{
		name: 'バナナ',
		caption: '86kcal/100g',
		category_id: '9'
	},
	{
		name: 'いちご',
		caption: '34kcal/100g',
		category_id: '9'
	},
	{
		name: '柿',
		caption: '60kcal/100g',
		category_id: '9'
	},
	{
		name: 'みかん',
		caption: '45kcal/100g',
		category_id: '9'
	},
	{
		name: 'グレープフルーツ',
		caption: '38kcal/100g',
		category_id: '9'
	},
	{
		name: 'レモン',
		caption: '54kcal/100g',
		category_id: '9'
	},
	{
		name: 'さくらんぼ',
		caption: '60kcal/100g',
		category_id: '9'
	},
	{
		name: 'マンゴー',
		caption: '64kcal/100g',
		category_id: '9'
	},
	{
		name: 'もも',
		caption: '40kcal/100g',
		category_id: '9'
	},
	{
		name: 'メロン',
		caption: '42kcal/100g',
		category_id: '9'
	},
	{
		name: 'ご飯',
		caption: '252kcal/1杯（150g）',
		category_id: '10'
	},
	{
		name: '食パン',
		caption: '156kcal/1枚（6枚切り60g）',
		category_id: '10'
	},
	{
		name: 'うどん（ゆで）',
		caption: '231kcal/1玉（220g）',
		category_id: '10'
	},
	{
		name: '中華めん',
		caption: '297kcal/1玉（150g）',
		category_id: '10'
	},
	{
		name: 'そば（ゆで）',
		caption: '224kcal/1玉（170g）',
		category_id: '10'
	},
	{
		name: 'スパゲティ（乾燥）',
		caption: '378kcal/1人分（100g）',
		category_id: '10'
	},
	{
		name: 'じゃがいも',
		caption: '159kcal/中1個（50g）',
		category_id: '11'
	},
	{
		name: 'さつまいも',
		caption: '264kcal/中1本（200g）',
		category_id: '11'
	},
	{
		name: '長いも',
		caption: '39kcal/1食分（60g）',
		category_id: '11'
	},
	{
		name: 'さといも',
		caption: '29kcal/中1個（50g）',
		category_id: '11'
	},
	{
		name: 'オリーブ油',
		caption: '921kcal/100g',
		category_id: '12'
	},
	{
		name: 'ごま油',
		caption: '921kcal/100g',
		category_id: '12'
	},
	{
		name: 'サラダ油',
		caption: '921kcal/100g',
		category_id: '12'
	},
	{
		name: 'バター（有塩）',
		caption: '745kcal/100g',
		category_id: '12'
	}
].each do |food|
	f = Food.find_or_initialize_by(name: food[:name])
	f.update(food)
end

p 'finish foods create'
p 'start admin create'

[
	{
		email: 'admin@a.com',
		password: '111111'
	},
	{
		email: 'admin1@a.com',
		password: '111111'
	},
].each do |admin|
	u = Admin.find_or_initialize_by(email: admin[:email])
	u.update(admin)
end

p 'finish admin create'