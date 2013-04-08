class UsersController < ApplicationController

	before_filter :authcation_with_user
  
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end
end
