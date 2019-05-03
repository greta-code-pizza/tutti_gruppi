class Order < ActiveRecord::Base
  has_many :products
  belongs_to :consumer
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> accept modifications

  def self.create_with_deps(params)
    order = Order.create(consumer_id: params[:order][:consumer_id])

    params[:order][:product_id].each do |key, value|
      OrderItem.create(order_id: order.id, product_id: key, quantity: value)
    end
  end
<<<<<<< HEAD
>>>>>>> WorkInProgress
=======
>>>>>>> accept modifications
end