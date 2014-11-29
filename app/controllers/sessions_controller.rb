class SessionsController < ApplicationController
  def new
    end
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid username/password combination'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
