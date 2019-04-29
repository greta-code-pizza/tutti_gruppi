class OrderItem < ActiveRecord::Base
    has_and_belongs_to_many :products
    has_and_belongs_to_many :order
    
end
