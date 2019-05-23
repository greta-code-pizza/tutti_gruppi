# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  consumer_id :bigint(8)
#

class Order < ActiveRecord::Base
  has_many :products
  belongs_to :consumer
  has_many :order_items

  def self.create_with_deps(params, order)
    transaction do
      params[:order][:products].each do |id, quantity|
        OrderItem.create(order_id: order.id, product_id: id, quantity: quantity)
      end
    end
  end

  def total
    order_items.map(&:unit_price_x_quantity).sum.round(2)
  end
end
