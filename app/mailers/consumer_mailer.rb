class ConsumerMailer < ApplicationMailer
  def notify_consumer(consumer, order)
    @consumer = Consumer.find(consumer)
    @order = Order.find(order.id)
    @items = OrderItem.where(order_id: order.id)
    mail(to: @consumer.email, subject: "Tutti Gruppi: commande n°#{@order.id}")
  end
end
