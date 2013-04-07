class RoomsController < ApplicationController

	before_filter :authcation_with_user
  
  def index
  	redirect_to login_path unless session[:username]
  	@rooms = Room.order("id desc").paginate(:page => params[:page], :per_page => 12) 
  end

  def show
  	@room = Room.find(params[:id])
  end
end
