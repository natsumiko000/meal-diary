class Admins::DiaryCommentsController < Admin::BaseController
  before_action :set_diary_comment, only: [:show, :edit, :update, :destroy]

  # GET /diary_comments
  # GET /diary_comments.json
  def index
    @diary_comments = DiaryComment.all
  end

  # GET /diary_comments/1
  # GET /diary_comments/1.json
  def show
  end

  # GET /diary_comments/new
  def new
    @diary_comment = DiaryComment.new
  end

  # GET /diary_comments/1/edit
  def edit
  end

  # POST /diary_comments
  # POST /diary_comments.json
  def create
    @diary_comment = DiaryComment.new(diary_comment_params)

    respond_to do |format|
      if @diary_comment.save
        format.html { redirect_to @diary_comment, notice: 'Diary comment was successfully created.' }
        format.json { render :show, status: :created, location: @diary_comment }
      else
        format.html { render :new }
        format.json { render json: @diary_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diary_comments/1
  # PATCH/PUT /diary_comments/1.json
  def update
    respond_to do |format|
      if @diary_comment.update(diary_comment_params)
        format.html { redirect_to @diary_comment, notice: 'Diary comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @diary_comment }
      else
        format.html { render :edit }
        format.json { render json: @diary_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diary_comments/1
  # DELETE /diary_comments/1.json
  def destroy
    @diary_comment.destroy
    respond_to do |format|
      format.html { redirect_to diary_comments_url, notice: 'Diary comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary_comment
      @diary_comment = DiaryComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_comment_params
      params.fetch(:diary_comment, {})
    end
end
