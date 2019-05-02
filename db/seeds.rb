# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Product.create(
  [
    {
      name: 'Oranges de table',
      package: 'box',
      price: 11.10,
      weight_value: 6,
      weight_type: 'kilogram'
    },
    {
      name: 'Oranges à jus',
      package: 'box',
      price: 6.25,
      weight_value: 5,
      weight_type: 'kilogram'
    },
    {
      name: 'Citrons',
      package: 'box',
      price: 8.58,
      weight_value: 3.5,
      weight_type: 'kilogram'
    },
    {
      name: 'Mandarines',
      package: 'box',
      price: 12,
      weight_value: 5,
      weight_type: 'kilogram'
    },
    {
      name: 'Avocats',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kilogram'
    },
    {
      name: 'Patates douces',
      package: 'box',
      price: 10,
      weight_value: 4,
      weight_type: 'kilogram'
    },
    {
      name: 'Mangues',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kilogram'
    },
    {
      name: 'Anones',
      package: 'box',
      price: 14,
      weight_value: 4,
      weight_type: 'kilogram'
    },
    {
      name: 'Pamplemousses',
      package: 'box',
      price: 11.75,
      weight_value: 5,
      weight_type: 'kilogram'
    },
    {
      name: 'Papaye',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kilogram'
    },
    {
      name: 'Amande',
      package: 'tray',
      price: 16,
      weight_value: 1,
      weight_type: 'kilogram'
    },
    {
      name: 'Figues séchées',
      package: 'bag',
      price: 8,
      weight_value: 1,
      weight_type: 'kilogram'
    },
    {
      name: 'Tomates séchées',
      package: 'bag',
      price: 6,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'Poivrons séchés',
      package: 'bag',
      price: 6.50,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'Pain de figues',
      package: 'bag',
      price: 4.50,
      weight_value: 300,
      weight_type: 'gram'
    },
    {
      name: 'Olives vertes',
      package: 'jar',
      price: 4,
      weight_value: 500,
      weight_type: 'gram'
    },
    {
      name: 'Olives noires',
      package: 'jar',
      price: 3.80,
      weight_value: 250,
      weight_type: 'gram'
    },
    {
      name: 'Tapenade',
      package: 'jar',
      price: 3.90,
      weight_value: 125,
      weight_type: 'gram'
    },
    {
      name: 'huile d\'olive',
      package: 'bottle',
      price: 43,
      weight_value: 5,
      weight_type: 'liter'
    }
  ]
)

Consumer.create(
  [
    {
      firstname: 'Catherine',
      lastname: 'Haas',
      email: 'fc.haas@gozmail.bzh'
    },
    {
      firstname: 'Isabelle',
      lastname: 'Depoortère',
      email: 'isabelledepoortere@yahoo.fr'
    },
    {
      firstname: 'Edith',
      lastname: 'De Gélis',
      email: 'edithdegelis@orange.fr'
    },
    {
      firstname: 'Phillipe',
      lastname: 'Roger Bompol',
      email: 'philippe.rogerbompol@orange.fr'
    },
    {
      firstname: 'Florence',
      lastname: 'Papin',
      email: 'papinflorence@hotmail.fr'
    },
    {
      firstname: 'Marie-José',
      lastname: 'Pasquereau',
      email: 'mjpasquereau@sfr.fr'
    },
    {
      firstname: 'Paolo',
      lastname: 'Merlhiot',
      email: 'merlhiotpaolo@yahoo.fr'
    },
    {
      firstname: 'Laura',
      lastname: 'Apparuit',
      email: 'laura.apparuit@gmail.com'
    },
    {
      firstname: 'Isabelle',
      lastname: 'Georges',
      email: 'isabel.georges@free.fr'
    },
    {
      firstname: 'Jean-Louis',
      lastname: 'De Gélis',
      email: 'jeanlouisdegelis@orange.fr'
    }
  ]
)