class Order < ActiveRecord::Base
  has_many :products
  belongs_to :consumer

  def self.create_with_deps(params)
    transaction do
      order = Order.create(consumer_id: params[:order][:consumer_id])

      params[:order][:products].each do |id, quantity|
        OrderItem.create(order_id: order.id, product_id: id, quantity: quantity)
      end
    end
  end

  def total
    @orderitems = OrderItem.where(order_id: id)
    @totalitem = []
    @orderitems.each do |item|
      @totalitem << (item.product.price*item.quantity)
    end
    @totalitem.sum / 100.0
  end
end
