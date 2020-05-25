class Admins::HomeController < Admins::BaseController
	def top
		@users_count = User.count
		@diaries_count = Diary.count
		@categories_count = Category.count
		@foods_count = Food.count
	end
end
