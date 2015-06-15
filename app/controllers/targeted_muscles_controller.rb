class TargetedMusclesController < ApplicationController
  before_action :set_targeted_muscle, only: [:show, :edit, :update, :destroy]

  # GET /targeted_muscles
  # GET /targeted_muscles.json
  def index
    @targeted_muscles = TargetedMuscle.all
  end

  # GET /targeted_muscles/1
  # GET /targeted_muscles/1.json
  def show
  end

  # GET /targeted_muscles/new
  def new
    @targeted_muscle = TargetedMuscle.new
  end

  # GET /targeted_muscles/1/edit
  def edit
  end

  # POST /targeted_muscles
  # POST /targeted_muscles.json
  def create
    @targeted_muscle = TargetedMuscle.new(targeted_muscle_params)

    respond_to do |format|
      if @targeted_muscle.save
        format.html { redirect_to @targeted_muscle, notice: 'Targeted muscle was successfully created.' }
        format.json { render :show, status: :created, location: @targeted_muscle }
      else
        format.html { render :new }
        format.json { render json: @targeted_muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /targeted_muscles/1
  # PATCH/PUT /targeted_muscles/1.json
  def update
    respond_to do |format|
      if @targeted_muscle.update(targeted_muscle_params)
        format.html { redirect_to @targeted_muscle, notice: 'Targeted muscle was successfully updated.' }
        format.json { render :show, status: :ok, location: @targeted_muscle }
      else
        format.html { render :edit }
        format.json { render json: @targeted_muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /targeted_muscles/1
  # DELETE /targeted_muscles/1.json
  def destroy
    @targeted_muscle.destroy
    respond_to do |format|
      format.html { redirect_to targeted_muscles_url, notice: 'Targeted muscle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_targeted_muscle
      @targeted_muscle = TargetedMuscle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def targeted_muscle_params
      params.require(:targeted_muscle).permit(:exercise_id, :muscle_id, :primary)
    end
end
