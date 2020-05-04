class Admin::DiaryCategoriesController < Admin::BaseController
  before_action :set_diary_category, only: [:show, :edit, :update, :destroy]

  # GET /diary_categories
  # GET /diary_categories.json
  def index
    @diary_categories = DiaryCategory.all
  end

  # GET /diary_categories/1
  # GET /diary_categories/1.json
  def show
  end

  # GET /diary_categories/new
  def new
    @diary_category = DiaryCategory.new
  end

  # GET /diary_categories/1/edit
  def edit
  end

  # POST /diary_categories
  # POST /diary_categories.json
  def create
    @diary_category = DiaryCategory.new(diary_category_params)

    respond_to do |format|
      if @diary_category.save
        format.html { redirect_to @diary_category, notice: 'Diary category was successfully created.' }
        format.json { render :show, status: :created, location: @diary_category }
      else
        format.html { render :new }
        format.json { render json: @diary_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diary_categories/1
  # PATCH/PUT /diary_categories/1.json
  def update
    respond_to do |format|
      if @diary_category.update(diary_category_params)
        format.html { redirect_to @diary_category, notice: 'Diary category was successfully updated.' }
        format.json { render :show, status: :ok, location: @diary_category }
      else
        format.html { render :edit }
        format.json { render json: @diary_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diary_categories/1
  # DELETE /diary_categories/1.json
  def destroy
    @diary_category.destroy
    respond_to do |format|
      format.html { redirect_to diary_categories_url, notice: 'Diary category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary_category
      @diary_category = DiaryCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_category_params
      params.fetch(:diary_category, {})
    end
end
