# frozen_string_literal: true

RSpec.describe Product, type: :model do
  describe '#euro' do
    it 'return cents (1000) to euro (10,00€)' do
      product = Product.create(name: 'Oranges', price: 1000)
      expect(product.euro.to_s).to eq('10,00€')
    end
  end

  describe '#upname' do
    it 'return orange to Orange' do
      product = Product.create(name: 'oranges', price: 1000)
      expect(product.upname).to eq('Oranges')
    end
  end

  describe '#weight' do
    context 'gram' do
      it 'return (6500) to (6,5 Kg)' do
        product = Product.create(name: 'orange', weight_value: 6500, weight_type: 'gram')
        expect(product.weight).to eq('6.5 Kg')
      end
      it 'return (500) to (500 gr)' do
        product = Product.create(weight_value: 500, weight_type: 'gram')
        expect(product.weight).to eq('500 gr')
      end
    end
  end

  context 'liter' do
    it 'return (5) to (5 L)' do
      product = Product.create(weight_value: 5, weight_type: 'liter')
      expect(product.weight).to eq('5 L')
    end
  end
end
