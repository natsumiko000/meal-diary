class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]

	# GET /categories
	# GET /categories.json
	def index
		@body_categories = Category.body
		@arange_categories = Category.arrange
		@energy_categories = Category.energy
	end

	# GET /categories/1
	# GET /categories/1.json
	def show
		@foods = @category.foods
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_category
			@category = Category.find(params[:id])
		end
end
