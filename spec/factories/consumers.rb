# frozen_string_literal: true

FactoryBot.define do
  factory :consumer do
    firstname { 'Catherine' }
    lastname { 'Haas' }
    email { 'fc.haas@gozmail.bz' }
  end
end