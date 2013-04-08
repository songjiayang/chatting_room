class ApplicationController < ActionController::Base
  protect_from_forgery

  
  def current_user
  	 @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  protected
  
  def authcation_with_user
  	redirect_to login_path unless current_user
  end
end
