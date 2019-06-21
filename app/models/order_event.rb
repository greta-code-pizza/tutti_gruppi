
class OrderEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :order
end
