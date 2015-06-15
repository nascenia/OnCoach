class ExercisePlansController < ApplicationController
  before_action :set_exercise_plan, only: [:show, :edit, :update, :destroy]

  # GET /exercise_plans
  # GET /exercise_plans.json
  def index
    @exercise_plans = ExercisePlan.all
  end

  # GET /exercise_plans/1
  # GET /exercise_plans/1.json
  def show
  end

  # GET /exercise_plans/new
  def new
    @exercise_plan = ExercisePlan.new
  end

  # GET /exercise_plans/1/edit
  def edit
  end

  # POST /exercise_plans
  # POST /exercise_plans.json
  def create
    @exercise_plan = ExercisePlan.new(exercise_plan_params)

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

  # PATCH/PUT /exercise_plans/1
  # PATCH/PUT /exercise_plans/1.json
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

  # DELETE /exercise_plans/1
  # DELETE /exercise_plans/1.json
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
      @exercise_plan = ExercisePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_plan_params
      params.require(:exercise_plan).permit(:name)
    end
end
