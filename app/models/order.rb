# frozen_string_literal: true

class Order < ActiveRecord::Base
  has_many :products
  belongs_to :authentication
  has_many :order_items

  def self.create_with_deps(params, order)
    transaction do
      params[:order][:products].each do |id, quantity|
        next unless quantity != '0'
        OrderItem.create(
          order_id: order.id,
          product_id: id,
          quantity: quantity
        )
      end
    end
  end

  def total
    order_items.map(&:unit_price_x_quantity).sum.round(2)
  end
end
