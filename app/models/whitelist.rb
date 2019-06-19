class Whitelist < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
end
