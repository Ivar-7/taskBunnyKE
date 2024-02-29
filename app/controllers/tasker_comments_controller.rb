class TaskerCommentsController < ApplicationController
  before_action :set_tasker_comment, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new create ]
  before_action :authenticate_admin!, only: %i[ edit update destroy ]

  # GET /tasker_comments or /tasker_comments.json
  def index
    @tasker_comments = TaskerComment.all
  end

  # GET /tasker_comments/1 or /tasker_comments/1.json
  def show
  end

  # GET /tasker_comments/new
  def new
    @tasker_comment = TaskerComment.new
  end

  # GET /tasker_comments/1/edit
  def edit
  end

  # POST /tasker_comments or /tasker_comments.json
  def create
    @tasker_comment = TaskerComment.new(tasker_comment_params)

    respond_to do |format|
      if @tasker_comment.save
        format.html { redirect_to tasker_comment_url(@tasker_comment), notice: "Tasker comment was successfully created." }
        format.json { render :show, status: :created, location: @tasker_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasker_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasker_comments/1 or /tasker_comments/1.json
  def update
    respond_to do |format|
      if @tasker_comment.update(tasker_comment_params)
        format.html { redirect_to tasker_comment_url(@tasker_comment), notice: "Tasker comment was successfully updated." }
        format.json { render :show, status: :ok, location: @tasker_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasker_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasker_comments/1 or /tasker_comments/1.json
  def destroy
    @tasker_comment.destroy!

    respond_to do |format|
      format.html { redirect_to tasker_comments_url, notice: "Tasker comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasker_comment
      @tasker_comment = TaskerComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasker_comment_params
      params.require(:tasker_comment).permit(:user_id, :tasker_id, :comment, :rating)
    end
end
