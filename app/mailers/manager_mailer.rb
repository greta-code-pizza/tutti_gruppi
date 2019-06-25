class ManagerMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)
  
  def notify_manager(manager, order)
    @manager = manager
    @order = order
    @items = OrderItem.where(order_id: order.id)
    mail(to: ENV['gmail_username'], subject: 'Tutti Gruppi')
  end
end
