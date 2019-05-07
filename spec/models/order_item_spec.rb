# frozen_string_literal: true

RSpec.describe OrderItem, type: :model do
  describe '#total' do
    it 'return (product price: 1000) * (quantity: 5)' do
      # consumer = Consumer.create(firstname: 'jean', lastname: 'Valjean', email: 'jean@valjean.com')
      # consumer = FactoryBot.create(:consumer)

      # product = Product.create(name: 'citron', price: 200)
      # product = FactoryBot.create(:product)

      # order = Order.create(consumer_id: consumer.id)
      # order = FactoryBot.create(:order)

      oI = FactoryBot.create(:orderItem)
      # oI = FactoryBot.create(:OrderItem)
      expect(oI.order.total).to eq(50.0)
    end
  end
end
