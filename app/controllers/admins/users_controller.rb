class Admins::UsersController < Admins::BaseController

	def index
    @users = User.all
	end

	def show
	end

	def edit
	end

	def update
	end

	def confirm
  end

end
