class OrderItem < ActiveRecord::Base
  belongs_to :product
  has_many :products
  has_and_belongs_to_many :order
end
