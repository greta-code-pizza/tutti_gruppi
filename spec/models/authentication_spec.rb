# frozen_string_literal: true

RSpec.describe Authentication, type: :model do
  describe '#fullname' do
    it 'return firstname + lastname' do
      user = FactoryBot.create(:authentication)
      expect(user.fullname).to eq("Catherine Haas")
    end
  end
end