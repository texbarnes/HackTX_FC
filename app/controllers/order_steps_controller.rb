class OrderStepsController < ApplicationController
    include Wicked::Wizard
    steps :design, :details, :payment
    
    def show
        @order = Order.new
        render_wizard
    end
    
    def update
        @order = Order.find(params[:id])
        @order.attributes = params[:order]
        render_wizard @order
    end
end
