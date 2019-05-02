class Product < ActiveRecord::Base
  enum package: {
    bag:     'bag',
    bottle:  'bottle',
    box:     'box',
    jar:     'jar',
    tray:    'tray'
  }
  enum weight_type: {
    kilogram: 'kilogram',
    gram: 'gram',
    liter: 'liter'
  }
end
