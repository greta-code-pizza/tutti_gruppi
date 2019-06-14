class Authentication < ActiveRecord::Base
  belongs_to :userable, polymorphic: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  def fullname
    firstname.capitalize + ' ' + lastname.capitalize
  end
end
