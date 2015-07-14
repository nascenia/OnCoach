class TrainingSessionsController < ApplicationController
  before_action :set_training_session, only: [:show, :edit, :update, :destroy]

  # GET /training_sessions
  # GET /training_sessions.json
  def index
    @training_sessions = TrainingSession.all
  end

  # GET /training_sessions/1
  # GET /training_sessions/1.json
  def show
  end

  # GET /training_sessions/new
  def new
    @training_session = TrainingSession.new
  end

  # GET /training_sessions/1/edit
  def edit
  end

  # POST /training_sessions
  # POST /training_sessions.json
  def create
    @training_session = TrainingSession.new(training_session_params)

    if @training_session.training_plan_template.present? && @training_session.client_id.present?
      @training_session.clone_training_plan_template_sessions
      redirect_to @training_session and return
    end

    respond_to do |format|
      if @training_session.save
        format.html { redirect_to @training_session, notice: 'Training session was successfully created.' }
        format.json { render :show, status: :created, location: @training_session }
      else
        format.html { render :new }
        format.json { render json: @training_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_sessions/1
  # PATCH/PUT /training_sessions/1.json
  def update
    respond_to do |format|
      if @training_session.update(training_session_params)
        format.html { redirect_to request.referer, :id => @training_session.training_plan_template.id }
        format.json { render :show, status: :ok, location: @training_session }
      else
        format.html { render :edit }
        format.json { render json: @training_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_sessions/1
  # DELETE /training_sessions/1.json
  def destroy
    @training_session.destroy
    respond_to do |format|
      format.html { redirect_to training_sessions_url, notice: 'Training session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_current_tst
    @training_session = TrainingSession.find params[:training_session_id]
    @training_session_template = @training_session.training_session_template

    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_session
      @training_session = TrainingSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_session_params
      params.require(:training_session).permit(:training_plan_template_id, :training_session_template_id, :start_at, :client_id)
    end
end
