class AdminController < ApplicationController
    def new
        @admin = Admin.new
    end
    
    def create
        admin = Admin.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
          redirect_to users_index
        end
    end
    
end
