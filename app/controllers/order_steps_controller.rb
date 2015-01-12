class OrderStepsController < ApplicationController
    include Wicked::Wizard
    steps :design, :details, :payment
    
    def show
        render_wizard
    end
end