# == Schema Information
#
# Table name: order_items
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  order_id   :bigint(8)
#  quantity   :integer
#

class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def pluralize(package)
    package = package[product.package.to_sym]
    plurality? ? package[1] : package[0]
  end

  def plurality?
    quantity > 1
  end

  def unit_price_x_quantity
    product.price * quantity / 100.0
  end
end
