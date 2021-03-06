class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:begin, :contact]

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

  def begin
    if current_user.present?
      if (current_user.type == "Admin")
        redirect_to admin_index_path and return
      elsif (current_user.type == "Coach")
        redirect_to coach_index_path and return
      else
        redirect_to user_index_path and return
      end
    else
      respond_to do |format|
        format.html {render layout: 'login'}
      end
    end
  end

  def contact
    respond_to do |format|
      format.html {render layout: 'login'}
    end
  end

  def change_locale
    l = params[:locale].to_s.strip.to_sym
    l = I18n.default_locale unless I18n.available_locales.include?(l)
    cookies.permanent[:educator_locale] = l
    redirect_to request.referer || root_url
  end
end
