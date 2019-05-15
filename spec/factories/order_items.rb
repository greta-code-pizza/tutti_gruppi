# frozen_string_literal: true

FactoryBot.define do
  factory :orderItem do
    product
    order
    quantity { 5 }
  end
end