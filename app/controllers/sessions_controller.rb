class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if not @user.nil? and @user.authenticate(params[:session][:password])
      redirect_to @user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to root_url, :notice => "Invalid username/password combination"
    end
  end
  
  def show
    @user = User.find(params[:format])
    redirect_to @user
  end

  def destroy
    log_out
    redirect_to root_url, :notice => "Logged out!"
  end
  
  def sign_in(user)
	cookies.signed[:remember_token] = user.remember_token
	self.current_user = user
end
end
