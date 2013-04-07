class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
  def authcation_with_user
  	redirect_to login_path unless session[:username]
  end
end
