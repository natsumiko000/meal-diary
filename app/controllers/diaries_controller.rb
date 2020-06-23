class DiariesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_diary, only: [:show, :edit, :update, :destroy, :data]

	def index
		@diaries = current_user.diaries
		render 'index', formats: 'json', handlers: 'jbuilder'
	end

	def record
		@diary = current_user.diaries.find_or_initialize_by(date: params[:date])
		if @diary.new_record?
			render :new
		else
			render :edit
		end
	end


	# POST /diaries
	# POST /diaries.json
	def create
		@diary = current_user.diaries.new(diary_params)
		if @diary.save
			redirect_to current_user, notice: '登録が完了しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @diary.errors.full_messages.join(", "))
		end
	end

	# PATCH/PUT /diaries/1
	# PATCH/PUT /diaries/1.json
	def update
		if @diary.update(diary_params)
			redirect_to current_user, notice: '上書きが完了しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @diary.errors.full_messages.join(", "))
		end
	end

	# DELETE /diaries/1
	# DELETE /diaries/1.json
	def destroy
		if @diary.destroy
			redirect_to current_user, notice: '削除しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @diary.errors.full_messages.join(", "))
		end
	end

	def data
		to  = @diary.date.at_end_of_day
		from = 6.days.ago(to).at_beginning_of_day
		category_diaries_hash =
			current_user.diaries
				.where(date: from..to).map{|t|t.categories}
				.flatten.group_by(&:name)
				.map {|k, v| [k, v.size] }.to_h

		all_categories_hash = Category.all.map{ |c| [c.name, 0] }.to_h
		@records = all_categories_hash.merge(category_diaries_hash)
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_diary
			@diary = current_user.diaries.find(params[:id])
		end

		# Only allow a list of trusted parameters through.
		def diary_params
			params.require(:diary).permit(:user_id, :b_image, :l_image, :d_image, :date, :weight, :comment, category_ids: [])
		end
end
