class DiariesController < ApplicationController
	before_action :set_diary, only: [:show, :edit, :update, :destroy, :data]

	# GET /diaries
	# GET /diaries.json
	def index
		@diaries = current_user.diaries
		render 'index', formats: 'json', handlers: 'jbuilder'
	end

	# GET /diaries/1
	# GET /diaries/1.json
	def show
	end

	def record
		date = params[:date]
		@diary = current_user.diaries.find_or_initialize_by(date: date)
		if @diary.new_record?
			render :new
		else
			render :edit				
		end
	end

	# GET /diaries/new
	# def new
	# 	date = params[:date]
	# 	if @diary = current_user.diaries.find_by(date: date)
	# 		redirect_to edit_diary_path(@diary)
	# 	else
	# 		@diary = current_user.diaries.new(date: date)
	# 	end
	# end

	# # GET /diaries/1/edit
	# def edit
	# 	diary = Diary.find_by(id: params[:id])
	# 	if diary.user == current_user
	# 		@diary = diary
	# 	else
	# 		redirect_to user_path(current_user)
	# 	end
	# end

	# POST /diaries
	# POST /diaries.json
	def create
		@diary = current_user.diaries.new(diary_params)
		if @diary.save
			redirect_to current_user, notice: 'Diary was successfully created.' 
		else
			render :new
		end
	end

	# PATCH/PUT /diaries/1
	# PATCH/PUT /diaries/1.json
	def update
		respond_to do |format|
			if @diary.update(diary_params)
				format.html { redirect_to current_user, notice: 'Diary was successfully updated.' }
				format.json { render :show, status: :ok, location: @diary }
			else
				format.html { render :edit }
				format.json { render json: @diary.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /diaries/1
	# DELETE /diaries/1.json
	def destroy
		respond_to do |format|
			if @diary.destroy
				format.html { redirect_to current_user, notice: 'Diary was successfully destroyed.' }
				format.json { head :no_content }
			else
				redirect_to current_user
			end
		end
	end

	def data
		to  = @diary.date.at_end_of_day
		from = 1.week.ago(to).at_end_of_day

		category_diaries_hash = 
			current_user.diaries
				.where(created_at: from..to).map{|t|t.categories}
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
