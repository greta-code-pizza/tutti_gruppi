# frozen_string_literal: true

# == Schema Information
#
# Table name: order_items
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  order_id   :bigint(8)
#  quantity   :integer
#


RSpec.describe OrderItem, type: :model do
  before(:each) do
    auth = Authentication.create(
      firstname: 'plop',
      lastname: 'plop',
      email: 'test@test.com',
      password: 'password123'
    )
    order = FactoryBot.create(:order, authentication: auth)
    @order_item = FactoryBot.create(:order_item, order: order)
  end

  describe '#unit_price_x_quantity' do
    it 'return cents (2500) to (125) €' do
      expect(@order_item.unit_price_x_quantity).to eq(125)
    end
  end

  describe '#plurality?' do
    it 'return true if quantity >= 2' do
      expect(@order_item.plurality?).to eq(true)
    end
  end

  describe '#pluralize' do
    it 'return turn box package type to boxes' do
      expect(@order_item.product.package.pluralize).to eq('boxes')
    end
  end
end
