class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personal, :social, :display
    
    def show
      @user = current_user
      render_wizard
    end
    
    def update
      @user = current_user
      if @user.update_attributes(params[:user])
        render_wizard @user
      else
        redirect_to wizard_path
      end
    end
    
    def finish_wizard_path
      user_path(current_user)
    end
    
    private
    def user_steps_params
      params.require(:user).permit(:username , :first , :last , :org , :role , :bio , :phone , :email , :facebook , :twitter , :linkedIn, :website , :showP, :showE, :showText, :showWeb, :showTwit, :showFace, :showLink)
    end
end
