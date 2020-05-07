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
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '魚類',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '卵',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '大豆製品',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '乳製品',
		food_group: 'second_group',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '海藻',
		food_group: 'second_group',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '緑黄色野菜',
		food_group: 'third_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '淡色野菜',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '果物',
		food_group: 'fourth_group',
		nutrition_type: 'arrange',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '穀類',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: 'イモ',
		food_group: 'fifth_group',
		nutrition_type: 'energy',
		image: File.open("#{Rails.root}/app/assets/images/sample.png")
	},
	{
		name: '油脂',
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