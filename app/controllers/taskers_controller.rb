class TaskersController < ApplicationController
  before_action :set_tasker, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new create edit update ]
  before_action :authenticate_tasker!, only: %i[ destroy ]

  # GET /taskers or /taskers.json
  def index
    @taskers = Tasker.all
  end

  # GET /taskers/1 or /taskers/1.json
  def show
  end

  # GET /taskers/new
  def new
    @tasker = Tasker.new
  end

  # GET /taskers/1/edit
  def edit
  end

  # POST /taskers or /taskers.json
  def create
    @tasker = Tasker.new(tasker_params)

    respond_to do |format|
      if @tasker.save
        format.html { redirect_to tasker_url(@tasker), notice: "Tasker was successfully created." }
        format.json { render :show, status: :created, location: @tasker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskers/1 or /taskers/1.json
  def update
    respond_to do |format|
      if @tasker.update(tasker_params)
        format.html { redirect_to tasker_url(@tasker), notice: "Tasker was successfully updated." }
        format.json { render :show, status: :ok, location: @tasker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskers/1 or /taskers/1.json
  def destroy
    @tasker.destroy!

    respond_to do |format|
      format.html { redirect_to taskers_url, notice: "Tasker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasker
      @tasker = Tasker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasker_params
      params.require(:tasker).permit(:user_id, :name, :location, :profile_picture, :description, :phone_number, :rating, :image, service_ids: [])
    end

    # Only allow tasker to delete profile
    def authenticate_tasker!
      redirect_to root_path, notice: "You are not authorized to perform this action" unless (@tasker.user_id == current_user.id || current_user.email == "cookie@me.con")
    end
end
