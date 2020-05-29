class Admins::CategoriesController < Admins::BaseController
	before_action :set_category, only: [:show, :edit, :update, :destroy]

	# GET /categories
	# GET /categories.json
	def index
		@categories = Category.all
	end

	# GET /categories/1
	# GET /categories/1.json
	def show
	end

	# GET /categories/new
	def new
		@category = Category.new
	end

	# GET /categories/1/edit
	def edit
	end

	# POST /categories
	# POST /categories.json
	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to admins_categories_path, notice: '食品目の作成が完了しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @category.errors.full_messages.join(", "))
		end
	end

	# PATCH/PUT /categories/1
	# PATCH/PUT /categories/1.json
	def update
		if @category.update(category_params)
			redirect_to admins_categories_path, notice: '食品目の上書きが完了しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @category.errors.full_messages.join(", "))
		end
	end

	# DELETE /categories/1
	# DELETE /categories/1.json
	def destroy
		if @category.destroy
			redirect_to admins_categories_path, notice: '食品目を削除しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @category.errors.full_messages.join(", "))
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_category
			@category = Category.find(params[:id])
		end

		# Only allow a list of trusted parameters through.
		def category_params
			params.require(:category).permit(:image, :name, :nutrition_type, :food_group, :caption)
		end
end
