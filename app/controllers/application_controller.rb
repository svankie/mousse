class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authorize

  protected

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def authorize
    unless current_user
      redirect_to login_url, notice: "Please log in, dude"
    end
  end
end
