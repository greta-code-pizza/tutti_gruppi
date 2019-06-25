# frozen_string_literal: true

class OrderPdf < Prawn::Document
  def initialize(order)
    super(top_margin: 70)
    @order = order
    @orders = Order.where(authentication_id: 7)
    order_recap
    order_id
  end

  def order_recap
    text "Commande numéro : #{@order.id}", size: 20, style: :bold
    text "Date : #{@order.date}"
    text "Facturé à #{@order.authentication.fullname}"
    text "Total de la facture #{@order.total} €", size: 14, style: :bold
  end

  def order_id
    table order_id_all
  end

  def order_id_all
    [['order id', 'name']] +
    @orders.map do |o|
      [o.id, o.authentication.fullname]
    end
  end
end
