# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { 'avocado' }
    package { 'box' }
    price { 2500 }
    weight_type { :gram }
    weight_value { 1000 }
  end
end
