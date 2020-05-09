p 'start user create'

User.create!(
	[
		{
			name:  'TEST',
			email: 'test@a.com',
			password: '111111'
		}
	]
)

p 'finish admin create'
p 'start categories create'

[
	{
		name: '肉類',
		caption: '骨や筋肉を作る、エネルギー源となる',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '魚類',
		caption: '骨や筋肉を作る、エネルギー源となる',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '卵',
		caption: '骨や筋肉を作る、エネルギー源となる',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '大豆製品',
		caption: '骨や筋肉を作る、エネルギー源となる',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '乳製品',
		caption: '骨や歯を作る、体の各機能を調節',
		food_group: 'second_group',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '海藻類',
		caption: '骨や歯を作る、体の各機能を調節',
		food_group: 'second_group',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '緑黄色野菜',
		caption: '皮膚や粘膜の保護、体の各機能を調節',
		food_group: 'third_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '淡色野菜',
		caption: '体の各機能を調節',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '果物',
		caption: '体の各機能を調節',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '穀類',
		caption: 'エネルギー源となる、体の各機能を調節',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: 'イモ類',
		caption: 'エネルギー源となる、体の各機能を調節',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '油脂類',
		caption: 'エネルギー源となる',
		food_group: 'sixth_group',
		nutrition_type: 'energy',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
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
		category_id: '1',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '豚肉',
		caption: '豚もも肉：183kcal/100g',
		category_id: '1',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '鶏肉',
		caption: '鶏もも肉（皮付き）：200kcal/100g',
		category_id: '1',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	}
].each do |food|
	f = Food.find_or_initialize_by(name: food[:name])
	f.update(food)
	f.image.attach(io: food[:image], filename: 'test.png')
end

p 'finish foods create'