class Product < ActiveRecord::Base
  enum package: {
    bag:     'bag',
    bottle:  'bottle',
    box:     'box',
    jar:     'jar',
    tray:    'tray'
  }
  enum weight_type: {
    gram: 'gram',
    liter: 'liter'
  }

  def upname
    name.titleize
  end

  def euro
    "#{price.to_i / 100},#{price.to_s[-2..-1]}€"
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
end
