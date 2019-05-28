# frozen_string_literal: true

RSpec.describe Consumer, type: :model do
  describe '#fullname' do
    it 'return firstname + lastname' do
      consumer = FactoryBot.create(:consumer)
      expect(consumer.fullname).to eq("Catherine Haas")
    end
  end
end
