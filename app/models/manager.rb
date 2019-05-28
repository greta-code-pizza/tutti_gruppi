class Manager < ActiveRecord::Base
  has_one :authentication, as: :userable
  accepts_nested_attributes_for :authentication
end