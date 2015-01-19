class Order < ActiveRecord::Base
    attr_accessible :quantity, :paperStock, :design, :subtotal, :total, :order_date, :address1, :address2, :state, :city, :zip, :user_id
    has_attached_file :image
end
