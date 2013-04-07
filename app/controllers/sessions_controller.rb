class SessionsController < ApplicationController
  
  def new
  end

  def create
  	session[:username] = params[:username]
    redirect_to chat_rooms_path
  end
end
