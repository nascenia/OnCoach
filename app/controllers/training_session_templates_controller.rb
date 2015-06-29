class TrainingSessionTemplatesController < ApplicationController
  before_action :set_exercise_plan, only: [:show, :edit, :update, :destroy]

  # GET /training_session_templates
  # GET /training_session_templates.json
  def index
    @exercise_plans = TrainingSessionTemplate.all
  end

  # GET /training_session_templates/1
  # GET /training_session_templates/1.json
  def show
  end

  # GET /training_session_templates/new
  def new
    @exercise_plan = TrainingSessionTemplate.new
  end

  # GET /training_session_templates/1/edit
  def edit
  end

  # POST /training_session_templates
  # POST /training_session_templates.json
  def create
    @exercise_plan = TrainingSessionTemplate.new(exercise_plan_params)

    respond_to do |format|
      if @exercise_plan.save
        format.html { redirect_to @exercise_plan, notice: 'Exercise plan was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_plan }
      else
        format.html { render :new }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_session_templates/1
  # PATCH/PUT /training_session_templates/1.json
  def update
    respond_to do |format|
      if @exercise_plan.update(exercise_plan_params)
        format.html { redirect_to @exercise_plan, notice: 'Exercise plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_plan }
      else
        format.html { render :edit }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_session_templates/1
  # DELETE /training_session_templates/1.json
  def destroy
    @exercise_plan.destroy
    respond_to do |format|
      format.html { redirect_to exercise_plans_url, notice: 'Exercise plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_plan
      @exercise_plan = TrainingSessionTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_plan_params
      params.require(:training_session_template).permit(:name, exercise_sessions_attributes: [:training_session_template_id, :exercise_id, :phase, :intensity, :repetitions, :num_of_series, :resting_period])
    end
end
