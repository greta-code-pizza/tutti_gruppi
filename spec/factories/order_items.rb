# frozen_string_literal: true

FactoryBot.define do
  factory :orderItem do
    id { 1 }
    quantity { 5 }
    product
    order
  end
end
