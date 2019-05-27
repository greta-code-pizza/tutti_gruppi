# frozen_string_literal: true

FactoryBot.define do
  factory :authentication do
    firstname { 'Khal' }
    lastname { 'Mamoul' }
    email { 'test@test.com' }
    password { 'password' }
  end
end