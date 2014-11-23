class UsersController < ApplicationController
  
  layout :choose_layout

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)

      if @user.save
       # log_in @user
        flash[:success] = "Welcome to ForeverCard!"
        redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
  end
  
  def update
    @user = User.find(params[:id])
    
    info = user_params
    if info[:password].empty?
      info.delete 'password'
    end
 
    if @user.update_attributes(info)
      redirect_to @user
    else
      render 'edit'
      # Can change this to 'update' ?
    end
end

  def destroy
  @user = User.find(params[:id])
  @user.destroy
 
  redirect_to users_path
  end
  
 

  
  private
  def user_params
    params.require(:user).permit(:first, :last, :email, :username, :password, :org, :role, :phone, :bio, :facebook, :twitter, :linkedin)
  end
  
  def choose_layout
    if @user.nil? or @user.id.nil?
      'application'
    else
      'logged_in'
    end
  end
end
