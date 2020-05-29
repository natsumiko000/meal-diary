class Admins::FoodsController < Admins::BaseController
  before_action :set_food, only: [:edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to admins_foods_path, notice: '食品を登録しました。' 
    else
      redirect_back(fallback_location: root_path, alert: @food.errors.full_messages.join(", "))
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    if @food.update(food_params)
      redirect_to admins_foods_path, notice: '食品の上書きが完了しました。' 
    else
      redirect_back(fallback_location: root_path, alert: @food.errors.full_messages.join(", "))
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    if @food.destroy
      redirect_to admins_foods_path, notice: '食品目を削除しました。' 
    else
      redirect_back(fallback_location: root_path, alert: @food.errors.full_messages.join(", "))
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :caption, :category_id)
    end
end
