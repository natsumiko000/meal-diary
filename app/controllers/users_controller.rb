class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user, only: [:show, :edit]

	def show
	end

	def edit
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_path(@user), notice: 'ユーザー情報を更新しました。' 
		else
			redirect_back(fallback_location: root_path, error: @user.errors.full_messages.join(", "))
		end
	end

	def confirm
	end

	private

	def set_user
		@user = current_user
	end

	def user_params
		params.require(:user).permit(:name, :introduction)
	end
end
