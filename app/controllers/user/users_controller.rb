class User::UsersController < ApplicationController
  load_and_authorize_resource
  def index
  end
end
