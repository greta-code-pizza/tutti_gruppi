class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def pluralize(package)
    package = package[product.package.to_sym]
    plurality? ? package[1] : package[2]
  end

  def plurality?
    quantity >= 2
  end

  def unit_price_x_quantity
    product.price * quantity / 100.0
  end
end
