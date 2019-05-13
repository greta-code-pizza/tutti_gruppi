# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Product.create(
  [
    {
      name: 'table_oranges',
      package: 'box',
      price: 1110,
      weight_value: 6000,
      weight_type: 'gram'
    },
    {
      name: 'juice_oranges',
      package: 'box',
      price: 625,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: 'lemons',
      package: 'box',
      price: 858,
      weight_value: 3500,
      weight_type: 'gram'
    },
    {
      name: 'tangerines',
      package: 'box',
      price: 1200,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: 'avocado',
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: 'sweet_potatoes',
      package: 'box',
      price: 1000,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: 'mangos',
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: 'annonas',
      package: 'box',
      price: 1400,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: 'grapefruit',
      package: 'box',
      price: 1175,
      weight_value: 5000,
      weight_type: 'gram'
    },
    {
      name: 'papaya',
      package: 'box',
      price: 1800,
      weight_value: 4000,
      weight_type: 'gram'
    },
    {
      name: 'almonds',
      package: 'tray',
      price: 1600,
      weight_value: 1000,
      weight_type: 'gram'
    },
    {
      name: 'dried_figs',
      package: 'bag',
      price: 800,
      weight_value: 1000,
      weight_type: 'gram'
    },
    {
      name: 'dried_tomatoes',
      package: 'bag',
      price: 600,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'dried_peppers',
      package: 'bag',
      price: 650,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'fig_bread',
      package: 'bag',
      price: 450,
      weight_value: 300,
      weight_type: 'gram'
    },
    {
      name: 'green_olive',
      package: 'jar',
      price: 400,
      weight_value: 500,
      weight_type: 'gram'
    },
    {
      name: 'black_olive',
      package: 'jar',
      price: 380,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'tapenade',
      package: 'jar',
      price: 390,
      weight_value: 125,
      weight_type: 'gram'
    },
    {
      name: 'olive_oil',
      package: 'bottle',
      price: 430,
      weight_value: 5,
      weight_type: 'liter'
    }
  ]
)

Consumer.create(
  [
    {
      firstname: 'consumer',
      lastname: 'test',
      email: 'arnaudfgr@gmail.com'
    },
    {
      firstname: 'responsable',
      lastname: 'test',
      email: 'pro.davidsaoud@gmail.com'
    },
    # {
    #   firstname: 'Catherine',
    #   lastname: 'Haas',
    #   email: 'fc.haas@gozmail.bzh'
    # },
    # {
    #   firstname: 'Isabelle',
    #   lastname: 'Depoortère',
    #   email: 'isabelledepoortere@yahoo.fr'
    # },
    # {
    #   firstname: 'Edith',
    #   lastname: 'De Gélis',
    #   email: 'edithdegelis@orange.fr'
    # },
    # {
    #   firstname: 'Phillipe',
    #   lastname: 'Roger Bompol',
    #   email: 'philippe.rogerbompol@orange.fr'
    # },
    # {
    #   firstname: 'Florence',
    #   lastname: 'Papin',
    #   email: 'papinflorence@hotmail.fr'
    # },
    # {
    #   firstname: 'Marie-José',
    #   lastname: 'Pasquereau',
    #   email: 'mjpasquereau@sfr.fr'
    # },
    # {
    #   firstname: 'Paolo',
    #   lastname: 'Merlhiot',
    #   email: 'merlhiotpaolo@yahoo.fr'
    # },
    # {
    #   firstname: 'Laura',
    #   lastname: 'Apparuit',
    #   email: 'laura.apparuit@gmail.com'
    # },
    # {
    #   firstname: 'Isabelle',
    #   lastname: 'Georges',
    #   email: 'isabel.georges@free.fr'
    # },
    # {
    #   firstname: 'Jean-Louis',
    #   lastname: 'De Gélis',
    #   email: 'jeanlouisdegelis@orange.fr'
    # }
  ]
)
