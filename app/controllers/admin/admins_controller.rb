class Admin::AdminsController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
     if User.create(user_params)
       redirect_to admin_index_path, :flash => { :success => "User is successfully created" }
     else
       redirect_to admin_new_path, :flash => { :error => "Something went wrong!, Please try again" }
     end
  end

  def user_params
    params.require(:user).permit(:email, :password, :type)
  end

end
