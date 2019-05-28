# frozen_string_literal: true

class Order < ActiveRecord::Base
  has_many :products
  belongs_to :authentication
  has_many :order_items

  def self.create_with_deps(params, current_authentication)
    transaction do
      order = Order.create(authentication: current_authentication)
      params[:order][:products].each do |id, quantity|
        next unless quantity != '0'
        OrderItem.create(
          order_id: order.id,
          product_id: id,
          quantity: quantity
        )
      end
      
      raise ActiveRecord::Rollback unless order.order_items.count.positive?
      order
    end
  end

  def total
    order_items.map(&:unit_price_x_quantity).sum.round(2)
  end
end
