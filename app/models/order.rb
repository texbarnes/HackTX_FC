class Order < ActiveRecord::Base
    has_attached_file :image
    attr_accessible :paperStock, :quantity, :design, :image
    
end
