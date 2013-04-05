class ChatsController < ApplicationController
  def room
  	redirect_to login_path unless session[:username]
  end
end
