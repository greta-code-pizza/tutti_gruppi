# frozen_string_literal: true

class Authentication < ActiveRecord::Base
  belongs_to :userable, polymorphic: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  def fullname
    firstname.capitalize + ' ' + lastname.capitalize
  end

  # Meta programation that generates 3 methods to know the role of authentication (user connected)
  %w[admin member manager].each do |role|
    define_method("#{role}?") { userable_type == role.capitalize }
  end
end
