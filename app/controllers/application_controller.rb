class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :set_time_zone
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in
    unless Current.user
      redirect_to sign_in_path, alert: "You must be logged in to do that"
    end
  end

  def set_time_zone
    Time.zone = "Asia/Riyadh"
  end
end
