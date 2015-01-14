class OrderStepsController < ApplicationController
    include Wicked::Wizard
    steps :design, :details, :payment
    
    def show
        @order = Order.create
        redirect_to wizard_path(steps.first, :order_id => @order.id)
    end
    
    def update
        @order = Order.find(params[:id])
        @order.attributes = params[:order]
        render_wizard @order
    end
end
