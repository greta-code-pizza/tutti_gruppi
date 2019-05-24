class AuthenticationMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)
  
  def notify_authentication(consumer, order)
    @consumer = Authentication.find(consumer)
    @order = Order.find(order.id)
    @items = OrderItem.where(order_id: order.id)
    mail(to: @consumer.email, subject: "Tutti Gruppi: commande n°#{@order.id}")
  end
end
