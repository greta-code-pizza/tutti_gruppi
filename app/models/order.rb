class Order < ActiveRecord::Base
  has_many :products
  belongs_to :consumer

  def create_with_deps(params)
    order = Order.create(consumer_id: params[:consumer_id])

    params[:product_id].each do |key, value|
      OrderItem.create(order_id: order.id, product_id: key, quantity: value)
    end
  end
end