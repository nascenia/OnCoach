class Coach::CoachesController < ApplicationController
  load_and_authorize_resource
  def index
    @clients = User.client
  end

  def calendar
    @client = User.find params[:client_id]
    @training_session_templates = TrainingSessionTemplate.all
    @training_plan_templates = TrainingPlanTemplate.all
    @training_session = TrainingSession.new
    @client_training_sessions = @client.training_sessions

    respond_to do |format|
      format.html
    end
  end
end
