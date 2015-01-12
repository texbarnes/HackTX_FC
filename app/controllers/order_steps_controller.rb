class OrderStepsController < ApplicationController
    include Wicked::Wizard
    steps :design, :details, :payment
    
    def show
        @user = current_user
        render_wizard
    end
end
