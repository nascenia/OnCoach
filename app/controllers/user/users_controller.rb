class User::UsersController < ApplicationController
  load_and_authorize_resource
  def index
  end

  def calendar
    @training_sessions = current_user.training_sessions
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update(user_params)
        sign_in(@user, :bypass => true)
        format.html { redirect_to request.referer, notice: 'User was successfully updated.' }
      else
        format.html { render :account }
      end
    end
  end

  def account
    @user = current_user

    respond_to do |format|
      format.html
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
