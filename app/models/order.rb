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
    order_items.map(&:total).sum / 100.0
  end
end
