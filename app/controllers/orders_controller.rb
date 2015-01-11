class OrdersController < ApplicationController
  def start
    @order = Order.new
  end
  
  def design
    cardDesigns = Hash.new
    cardDesigns["Eclipse"] = "http://i60.tinypic.com/2cr8xs4.jpg"
  end
  
  def create
    @order = Order.new(order_params)
 
    @order.save
    redirect_to @order
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def index
    @orders = Order.all.reverse
  end

  def update
    @order = Order.find(params[:id])
  end
    
  private
  def order_params
    params.require(:order).permit(:quantity, :paperStock)
  end
  
end
