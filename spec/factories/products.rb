# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id           :bigint(8)        not null, primary key
#  name         :string(255)
#  package      :string(255)
#  price        :integer
#  weight_value :integer
#  weight_type  :string(255)
#


FactoryBot.define do
  factory :product do
    name { 'avocado' }
    package { 'box' }
    price { 2500 }
    weight_type { :gram }
    weight_value { 1000 }
  end
end
