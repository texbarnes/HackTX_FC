class OrderStepsController < ApplicationController
    include Wicked::Wizard
    steps :design, :details, :payment
    
    
    def show
        @order = Order.find(params[:order_id])
        render_wizard
    end
    
    def update
        @order = Order.find(params[:order_id])
        @order.update_attributes(params[:order])
        redirect_to wizard_path(next_step, :order_id => @order.id)
    end
    
    def create
        @order = Order.create(user_id: current_user.id)
        redirect_to wizard_path(steps.first, :order_id => @order.id)
    end
end
