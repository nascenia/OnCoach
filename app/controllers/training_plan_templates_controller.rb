class TrainingPlanTemplatesController < ApplicationController
  before_action :set_training_plan, only: [:show, :edit, :update, :destroy]

  # GET /training_plan_templates
  # GET /training_plan_templates.json
  def index
    @training_plan_templates = TrainingPlanTemplate.all
  end

  # GET /training_plan_templates/1
  # GET /training_plan_templates/1.json
  def show
    @training_sessions = @training_plan_template.training_sessions
  end

  # GET /training_plan_templates/new
  def new
    @training_plan_template = TrainingPlanTemplate.new
  end

  # GET /training_plan_templates/1/edit
  def edit
    @training_session = TrainingSession.new
    @training_sessions = @training_plan_template.training_sessions
  end

  # POST /training_plan_templates
  # POST /training_plan_templates.json
  def create
    @training_plan_template = TrainingPlanTemplate.new(training_plan_params)

    respond_to do |format|
      if @training_plan_template.save
        format.html { redirect_to @training_plan_template, notice: 'Training plan was successfully created.' }
        format.json { render :show, status: :created, location: @training_plan_template }
      else
        format.html { render :new }
        format.json { render json: @training_plan_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_plan_templates/1
  # PATCH/PUT /training_plan_templates/1.json
  def update
    respond_to do |format|
      if @training_plan_template.update(training_plan_params)
        format.html { redirect_to @training_plan_template, notice: 'Training plan was successfully updated.' }
        format.js {render :edit}
        format.json { render :show, status: :ok, location: @training_plan_template }
      else
        format.html
        format.json { render json: @training_plan_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_plan_templates/1
  # DELETE /training_plan_templates/1.json
  def destroy
    @training_plan_template.destroy
    respond_to do |format|
      format.html { redirect_to training_plan_templates_url, notice: 'Training plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_plan
      @training_plan_template = params[:id].present? ? TrainingPlanTemplate.find(params[:id]): TrainingPlanTemplate.find(params[:training_plan_template_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_plan_params
      params.require(:training_plan_template).permit(:name, :owner_id, :start_date)
    end
end
