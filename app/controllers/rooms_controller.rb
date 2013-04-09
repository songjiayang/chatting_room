#encoding:utf-8
class RoomsController < ApplicationController

	before_filter :authcation_with_user
  
  def index
  	@rooms = Room.order("id desc").paginate(:page => params[:page], :per_page => 12) 
  end

  def show 
  	@room = Room.find(params[:id])
    @online_user = @room.flush_online_user(current_user.id)
  end

  def sent_message
      content = $markdown.render(params[:msg])
      Sms.create({content:content,room_id:params[:room_id],user_id:current_user.id})
      render json:content
  end

  def new
    @room = Room.new
  end

  def create
    current_user.rooms.create(params[:room])
    redirect_to chat_rooms_path
  end

  def rooms
    @rooms = Room.where('user_id=?',current_user.id).order("id desc").paginate(:page => params[:page], :per_page => 10) 
  end

  def edit
     @room = Room.where('user_id=? and id=?',current_user.id,params[:id]).first
  end

  def update
    @room = Room.where('user_id=? and id=?',current_user.id,params[:id]).first
    if @room and @room.update_attributes(params[:room])
      flash[:success] = "编号为#{params[:id]}的房间修改成功!"
      redirect_to my_room_path
    else
      flash[:error] = "编号为#{params[:id]}的房间修改失败!"
      redirect_to my_room_path
    end
  end

  def destroy
    @room = Room.where('user_id=? and id=?',current_user.id,params[:id]).first
    if @room and @room.destroy
      flash[:success] = "编号为#{params[:id]}的房间删除成功!"
      redirect_to my_room_path
    else
      flash[:error] = "编号为#{params[:id]}的房间删除失败!"
      redirect_to my_room_path
    end
  end

  def online_user
    render json:Room.online_user_number(params[:room_id])
  end
  
end
