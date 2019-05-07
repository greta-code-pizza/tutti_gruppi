# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    id { 1 }
    name { 'oranges' }
    price { 1000 }
    weight_type { :gram }
    weight_value { 1000 }
  end
end
