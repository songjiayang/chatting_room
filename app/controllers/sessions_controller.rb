class SessionsController < ApplicationController
  
  def new
  end

  def create
  	session[:username] = params[:username]
  	session[:avater] = User.image_with_email(params[:email],params[:username])
    redirect_to chat_rooms_path
  end
end
