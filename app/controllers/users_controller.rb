class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  
  layout :choose_layout

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)

      if @user.save
        log_in @user
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

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
