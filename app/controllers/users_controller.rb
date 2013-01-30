class UsersController < ApplicationController
  
  def index
    p "IDEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    p params
    @users = User.find(:all)
    p @users
  end
  
  
  def new
    @user = User.new
  end
  
  def create
    p "create!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    p params
    @user = User.new(params[:user])
    p params[:user]
   begin
      @user.save
    rescue ActiveRecord::RecordInvalid
      @user = params[:user]
    end
    render :partial => "index"
  end
  
  
end
