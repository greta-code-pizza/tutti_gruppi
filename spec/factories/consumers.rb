# frozen_string_literal: true

FactoryBot.define do
  factory :consumer do
    firstname { 'Catherine' }
    lastname { 'Haas' }
    email { 'fc.haas@gozmail.bz' }
    password { '123456' }
  end
end