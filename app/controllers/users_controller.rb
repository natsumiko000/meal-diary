class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		user = User.find_by(id: params[:id])
    	if user == current_user
      		@user = current_user
    	else
      		redirect_to user_path(current_user) and return
    	end
	end

	def update
		@user = User.find(params[:id])
  		if @user.update(user_params)
  			redirect_to user_path(@user), notice: 'You have updated user successfully.' 
  		else
  			render :edit
  		end
	end

	def confirm
	end

	private

	def user_params
		params.require(:user).permit(:name, :introduction)
	end
end
