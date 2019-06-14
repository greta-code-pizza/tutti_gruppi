# frozen_string_literal: true

class GroupmentAuthentication < ActiveRecord::Base
  belongs_to :groupment
  belongs_to :authentication
end
