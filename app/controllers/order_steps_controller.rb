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
        @order = Order.create(:order_date => Time.now, :user_id => current_user.id)
        redirect_to wizard_path(:design, :order_id => @order.id)
    end
    
    private
    def user_steps_params
      params.require(:order).permit(:quantity, :paperStock, :design, :subtotal, :total, :order_date, :address1, :address2, :state, :city, :zip, :user_id)
    end
end
