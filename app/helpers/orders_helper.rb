# frozen_string_literal: true

module OrdersHelper
  # pluralize html if order greater than 1
  def order_count(order)
    if order.count > 1
      '<p>Commandes passées : </p>'
    else
      '<p>Commande passée : </p>'
    end.html_safe
  end
end
