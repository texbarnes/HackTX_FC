class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personal, :social, :display
    
    def show
      @user = current_user
      render_wizard
    end
    
    def update
      @user = current_user
      @user.attributes = params[:user]
      redirect_to wizard_path(next_step)
    end
    
    def finish_wizard_path
      user_path(current_user)
    end
end
