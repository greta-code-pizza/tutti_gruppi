# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  consumer_id :bigint(8)
#


RSpec.describe Order, type: :model do
  describe '#total' do
    before(:each) do
      user = Authentication.create(
        firstname: 'Catherine',
        lastname: 'Haas',
        email: 'test@test.com',
        password: 'password123'
      )

      @order = FactoryBot.create(:order, authentication: user)
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

  describe '#create_with_deps' do
    before(:each) do
      @user = Authentication.create(
        firstname: 'Catherine',
        lastname: 'Haas',
        email: 'test@test.com',
        password: 'password123'
      )
    end

    context 'invalid_params' do
      it 'return (error) to (order_items.count = false)' do
        params = {
          order_id: 1,
          product_id: 1,
          quantity: 0
        }
        expect { described_class.create_with_deps(params, @user).to raise_error(RangeError) }
      end

      it 'return (error) for (invalid product)' do
        params = {"orders"=>{"products"=>{"1"=>"1"}}}
        expect { described_class.create_with_deps(params, @user).to raise_error(RangeError) }
      end
    end
  end
end
