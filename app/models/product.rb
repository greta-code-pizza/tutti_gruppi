# frozen_string_literal: true

class Product < ActiveRecord::Base
  enum name: {
    table_oranges:  'table oranges',
    juice_oranges:  'juice oranges',
    lemons:         'lemons',
    tangerines:     'tangerines',
    avocado:        'avocado',
    sweet_potatoes: 'sweet potatoes',
    mangos:         'mangos',
    annonas:        'annonas',
    grapefruit:     'grapefruit',
    papaya:         'papaya',
    almonds:        'almonds',
    dried_figs:     'dried figs',
    dried_tomatoes: 'dried tomatoes',
    dried_peppers:  'dried peppers',
    fig_bread:      'fig bread',
    green_olive:    'green olive',
    black_olive:    'black olive',
    tapenade:       'tapenade',
    olive_oil:      'olive oil'
  }
  enum package: {
    bag:     'bag',
    bottle:  'bottle',
    bottles: 'bottles',
    box:     'box',
    jar:     'jar',
    tray:    'tray'
  }
  enum weight_type: {
    gram: 'gram',
    liter: 'liter'
  }
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

  def plurality?(quantity, package)
    if quantity >= 2
      package[1]
    else
      package[0]
    end
  end
end
