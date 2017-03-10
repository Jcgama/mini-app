class UserController < ApplicationController
  def show
  end
  
  def search
    @user = User.find(params[:id])
    @lists = @user.lists.paginate(page: params[:page])
  end
  
  
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all.order("created_at DESC")
    end
  end
  
  
end
