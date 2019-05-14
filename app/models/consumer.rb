class Consumer < ActiveRecord::Base
  
  def fullname
    firstname.capitalize + ' ' + lastname.capitalize
  end
end
