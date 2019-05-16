# frozen_string_literal: true

RSpec.describe Order, type: :model do
  describe '#total' do
    before(:each) do
      @order = FactoryBot.create(:order)
      quantity = 3
      products = { 'avocado' => 1110, 'annonas' => 625, 'lemons' => 858 }

      products.each do |name, price|
        product = FactoryBot.create(:product, name: name, price: price)
        FactoryBot.create(:order_item, product: product, order: @order, quantity: quantity)
        quantity -= 1
      end
    end

    it 'return total of order' do
      expect(@order.total).to eq(54.38)
    end
  end
end
