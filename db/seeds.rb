# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

PRODUCTS = {
  'table_oranges'   =>  'Oranges de table',
  'juice_oranges'   =>  'Oranges à jus',
  'lemons'          =>  'Citrons',
  'tangerines'      =>  'Mandarines',
  'avocado'         =>  'Avocats',
  'sweet_potatoes'  => 'Patates douces',
  'mangos'          => 'Mangues',
  'annonas'         => 'Anones',
  'grapefruit'      => 'Pamplemousses',
  'papaya'          => 'Papayes',
  'almonds'         => 'Amandes',
  'dried_figs'      => 'Figues séchées',
  'dried_tomatoes'  => 'Tomates séchées',
  'dried_peppers'   => 'Poivrons séchés',
  'fig_bread'       => 'Pain de figues',
  'green_olive'     => 'Olives vertes',
  'black_olive'     => 'Olives noires',
  'tapenade'        => 'Tapenade',
  'olive_oil'       => "Huile d'olive"
}

Product.create(
  [
    {
      name: PRODUCTS['table_oranges'],
      package: 'box',
      price: 1110,
      weight_value: 6000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['juice_oranges'],
      package: 'box',
      price: 625,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['lemons'],
      package: 'box',
      price: 858,
      weight_value: 3500,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['tangerines'],
      package: 'box',
      price: 1200,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['avocado'],
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['sweet_potatoes'],
      package: 'box',
      price: 1000,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['mangos'],
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['annonas'],
      package: 'box',
      price: 1400,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['grapefruit'],
      package: 'box',
      price: 1175,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['papaya'],
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['almonds'],
      package: 'tray',
      price: 1600,
      weight_value: 1000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['dried_figs'],
      package: 'bag',
      price: 800,
      weight_value: 1000,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['dried_tomatoes'],
      package: 'bag',
      price: 600,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['dried_peppers'],
      package: 'bag',
      price: 650,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['fig_bread'],
      package: 'bag',
      price: 450,
      weight_value: 300,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['green_olive'],
      package: 'jar',
      price: 400,
      weight_value: 500,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['black_olive'],
      package: 'jar',
      price: 380,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['tapenade'],
      package: 'jar',
      price: 390,
      weight_value: 125,
      weight_type: 'gram'
    },
    {
      name: PRODUCTS['olive_oil'],
      package: 'bottle',
      price: 430,
      weight_value: 5,
      weight_type: 'liter'
    }
  ]
)

Groupment.create(
  [
    {
      name: 'Aucun',
      postal_code: ''
    },
    {
      name: 'Séné',
      postal_code: '56860'
    },
    {
      name: 'Vannes',
      postal_code: '56000'
    }
  ]
)

GroupmentAuthentication.create(
  [
    {
      groupment_id: 1,
      authentication_id: 1
    },
    {
      groupment_id: 1,
      authentication_id: 2
    }
  ]
)

Event.create(
  [
    {
      name:"june",
      open:Date.today.beginning_of_month,
      close:Date.today.end_of_month,
      delivery:Date.today.end_of_month
    }
  ]
)
