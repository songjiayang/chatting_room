
class RoomsController < ApplicationController

	before_filter :authcation_with_user
  
  def index
  	@rooms = Room.order("id desc").paginate(:page => params[:page], :per_page => 12) 
  end

  def show
  	@room = Room.find(params[:id])
  end

  def sent_message
  	respond_to do |format|
      format.json { render json:$markdown.render(params[:msg])}
    end
  end
end
