# frozen_string_literal: true

RSpec.describe Product, type: :model do
  describe '#euro' do
    it 'return cents (2500) to euro (25,00€)' do
      product = FactoryBot.create(:product)
      expect(product.euro).to eq("25,00 €")
    end
  end

  describe '#upname' do
    it 'return avocado to Avocado' do
      product = FactoryBot.create(:product)
      expect(product.upname).to eq('Avocado')
    end
  end

  describe '#weight' do
    context 'gram' do
      it 'return (6500) to (6,5 Kg)' do
        product = FactoryBot.create(:product, weight_value: 6500)
        expect(product.weight).to eq('6.5 Kg')
      end
      it 'return (500) to (500 gr)' do
        product = FactoryBot.create(:product, weight_value: 500)
        expect(product.weight).to eq('500 gr')
      end
    end

    context 'liter' do
      it 'return (5) to (5 L)' do
        product = FactoryBot.create(:product, weight_value: 5, weight_type: 'liter')
        expect(product.weight).to eq('5 L')
      end
    end
  end

end
