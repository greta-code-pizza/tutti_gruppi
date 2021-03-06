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

class Product < ActiveRecord::Base
  enum package: {
    bag: 'bag',
    bottle: 'bottle',
    bottles: 'bottles',
    box: 'box',
    jar: 'jar',
    tray: 'tray'
  }
  enum weight_type: {
    gram: 'gram',
    liter: 'liter'
  }

  def euro
    "#{price.to_i / 100},#{price.to_s[-2..-1]} €"
  end

  def weight
    if weight_type == 'gram'
      if weight_value >= 1000
        "#{weight_value / 1000.0} Kg"
      else
        "#{weight_value} gr"
      end
    elsif weight_type == 'liter'
      "#{weight_value} L"
    end
  end

  def upname
    name.capitalize
  end

  def plurality?(quantity, package)
    if quantity >= 2
      package[1]
    else
      package[0]
    end
  end
end
