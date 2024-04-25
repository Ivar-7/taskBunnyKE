class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    taskers_path
  end

  private
  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
  end

  def authenticate_admin!
    redirect_to root_path unless user_signed_in? && current_user.email == "cookie@me.con"
  end
end
