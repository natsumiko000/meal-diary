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
		caption: '牛もも肉：209kcal/100g',
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