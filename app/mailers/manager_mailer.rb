class ManagerMailer < ApplicationMailer
  def notify_manager(consumer, order)
    @consumer = Consumer.find(consumer)
    @manager = Consumer.where(group: @consumer.group, group_status: 'manager').first
    @order = Order.find(order.id)
    @items = OrderItem.where(order_id: order.id)
    mail(to: @manager.email, subject: "#{@manager.firstname} - Tutti Gruppi")
  end
end
