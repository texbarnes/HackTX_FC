class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personal, :social, :display
    
    def show
      @user = current_user
      render_wizard
    end
    
    def update
      @user = current_user
      info = user_steps_params
      if @user.update_attributes(info)
        redirect_to wizard_path(next_step)
      else
        redirect_to wizard_path
      end
    end
    
    def finish_wizard_path
      user_path(current_user)
    end
    
    private
    def user_steps_params
      params.require(:user).permit(:username , :first , :last , :org , :role , :bio)
    end
end
