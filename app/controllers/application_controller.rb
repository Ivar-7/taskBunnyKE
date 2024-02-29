class ApplicationController < ActionController::Base

  private
  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
  end

  def authenticate_admin!
    redirect_to root_path unless user_signed_in? && current_user.email == "cookie@me.con"
  end
end
