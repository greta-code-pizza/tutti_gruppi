# frozen_string_literal: true

RSpec.describe Authentication, type: :model do
  before(:each) do
    @user = Authentication.create(
      firstname: 'Catherine',
      lastname: 'Haas',
      email: 'test@test.com',
      password: 'password123'
    )
  end

  describe '#fullname' do
    it 'return firstname + lastname' do
      # FactoryBot.create(:whitelist)
      # member = Member.new
      # user = FactoryBot.create(:authentication, userable: member)
      expect(@user.fullname).to eq('Catherine Haas')
    end
  end
end
