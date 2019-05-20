# frozen_string_literal: true

RSpec.describe OrderItem, type: :model do
  describe '#unit_price_x_quantity' do
    it 'return cents (2500) to (125) €' do
      product = FactoryBot.create(:order_item)
      expect(product.unit_price_x_quantity).to eq(125)
    end
  end

  describe '#plurality?' do
    it 'return true if quantity >= 2' do
      product = FactoryBot.create(:order_item)
      expect(product.plurality?).to eq(true)
    end
  end

  describe '#pluralize' do
    it 'return turn box package type to boxes' do
      order_item = FactoryBot.create(:order_item)
      expect(order_item.product.package.pluralize).to eq('boxes')
    end
  end
end
