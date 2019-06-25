# frozen_string_literal: true

class OrderPdf < Prawn::Document
  def initialize(order)
    super(top_margin: 70)
    @order = order
    order_recap
  end

  def order_recap
    text "Commande numéro : #{@order.id}", size: 20, style: :bold
    text "Date : #{@order.date}"
    text "Facturé à #{@order.authentication.fullname}"
    text "Total de la facture #{@order.total} €", size: 14, style: :bold
  end
end
