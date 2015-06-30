class User::UsersController < ApplicationController
  load_and_authorize_resource
  def index
  end

  def calendar
    @training_sessions = current_user.training_sessions
  end
end
