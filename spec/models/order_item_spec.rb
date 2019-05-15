# frozen_string_literal: true

RSpec.describe OrderItem, type: :model do
  describe '#unit_price_x_quantity' do
    it 'return cents (2500) to (125) €' do
      product = FactoryBot.create(:orderItem)
      expect(product.unit_price_x_quantity).to eq(125)
    end
  end

  describe '#plurality?' do
    it 'return true if quantity >= 2' do
      product = FactoryBot.create(:orderItem)
      expect(product.plurality?).to eq(true)
    end
  end

  # describe '#pluralize' do
  #   it 'return ...' do
  #     orderItem = FactoryBot.create(:orderItem)
  #     expect(orderItem.pluralize(orderItem.product.package)).to_s eq('caisse')
  #   end
  # end
  describe '#pluralize' do
    it 'return ...' do
      orderItem = FactoryBot.create(:orderItem)
      expect(orderItem.product.package.pluralize).to eq('boxes')
    end
  end
end


# def pluralize(package)
#   package = package[product.package.to_sym]
#   plurality? ? package[1] : package[2]
# end
