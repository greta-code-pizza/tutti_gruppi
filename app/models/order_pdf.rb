# frozen_string_literal: true

class OrderPdf < Prawn::Document
  def initialize(order, orderItems)
    super(top_margin: 70)
    @order = order
    @order_items = orderItems
    header
    order_number
    table_style
    grand_total
    billed_to
  end

  def header
    text 'TUTTI GRUPPI', size: 20, style: :bold, align: :center
  end

  def order_number
    text "Commande numéro : #{@order.id}", size: 16,
                                           style: :bold,
                                           align: :center
    move_down 15
  end

  def order_recap
    data = [['Produits', 'Quantité', 'Prix unitaire', 'Prix total']]
    data += (
    @order_items.map do |oi|
      [
        I18n.t("product.#{oi.product.name}"),
        oi.quantity,
        oi.product.euro,
        "#{oi.product.price.to_i * oi.quantity / 100},#{oi.product.price.to_s[-2..3]} €"
      ]
    end
  )
    data
  end

  def grand_total
    pad(20) do
      text "Total de la facture #{@order.total} €",
           size: 14,
           style: :bold,
           inline_format: true,
           align: :center
    end
  end

  def billed_to
    text "Facturé à #{@order.authentication.fullname}, le #{@order.date}",
         align: :center
  end

  def table_style
    table order_recap, width: bounds.width do
      row(0).font_style = :bold
      columns(0..3).align = :center
      self.row_colors = %w[fffae6 d9e7fc]
      self.header = true
    end
  end
end
