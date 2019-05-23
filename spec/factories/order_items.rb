# frozen_string_literal: true

# == Schema Information
#
# Table name: order_items
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  order_id   :bigint(8)
#  quantity   :integer
#


FactoryBot.define do
  factory :order_item do
    product
    order
    quantity { 5 }
  end
end
