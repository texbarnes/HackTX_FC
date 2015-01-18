class Order < ActiveRecord::Base
    has_attached_file :image
    attr_accessible :paperStock, :quantity, :design, :image, :address1, :address2, :city, :state, :zip, :shipping
    
    validates :address1, presence: true
    validates :address2, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zip, presence: true
    
end
