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

  def change_locale
    l = params[:locale].to_s.strip.to_sym
    l = I18n.default_locale unless I18n.available_locales.include?(l)
    cookies.permanent[:educator_locale] = l
    redirect_to request.referer || root_url
  end
end
