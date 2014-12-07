class AdminController < ApplicationController
  def new
  end
  
  def create
    admin = Admin.find_by(username: params[:username])
    if admin && admin.authenticate(params[:username][:password])
      redirect_to users_index_url
    else
      redirect_to root_url
    end

  end
end
