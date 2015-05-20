class HomeController < ApplicationController

  def index
    if current_user.present?
      if (current_user.type == "Admin")
        redirect_to admin_index_path
      elsif (current_user.type == "Coach")
        redirect_to coach_index_path
      else
        redirect_to user_index_path
      end
    end
  end
end
