class AuthenticationMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)
  
  def notify_authentication(authentication, order)
    @authentication = authentication
    @order = order
    @items = OrderItem.where(order_id: order.id)
    mail(to: @authentication.email, subject: "Tutti Gruppi: commande n°#{@order.id}")
  end
end
