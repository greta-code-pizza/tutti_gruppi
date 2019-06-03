# frozen_string_literal: true

class GroupmentAuthentication < ActiveRecord::Base
  belongs_to :groupement
  belongs_to :authentication
end
