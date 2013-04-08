class SessionsController < ApplicationController
  
  def new
  	self.class.layout 'blank'
  end

  def create
  	session[:username] = params[:username]
  	session[:user_id] = User.image_with_email(params[:email],params[:username])
    redirect_to chat_rooms_path
  end

  def destroy
  	session[:username] = nil
  	session[:user_id] = nil
  	redirect_to login_path
  end
end
