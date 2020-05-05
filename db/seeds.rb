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