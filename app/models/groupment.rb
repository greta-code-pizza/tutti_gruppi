# frozen_string_literal: true

class Groupment < ActiveRecord::Base
  has_many :groupment_authentications
  has_many :authentications
end
