class Coach::CoachesController < ApplicationController
  load_and_authorize_resource
  def index
    @clients = User.client
  end

  def calendar
    @client = User.find params[:client_id]
  end
end
