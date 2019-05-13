class ManagerMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)
  
  def notify_manager(consumer, order)
    @consumer = Consumer.find(consumer)
    @order = Order.find(order.id)
    @items = OrderItem.where(order_id: order.id)
    mail(to: ENV['gmail_username'], subject: "Tutti Gruppi")
  end
end
