# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Product.create(
  [
    {
      name: 'Oranges de table',
      package: 'box',
      price: 11.10,
      weight_value: 6,
      weight_type: 'kg'
    },
    {
      name: 'Oranges à jus',
      package: 'box',
      price: 6.25,
      weight_value: 5,
      weight_type: 'kg'
    },
    {
      name: 'Citrons',
      package: 'box',
      price: 8.58,
      weight_value: 3.5,
      weight_type: 'kg'
    },
    {
      name: 'Mandarines',
      package: 'box',
      price: 12,
      weight_value: 5,
      weight_type: 'kg'
    },
    {
      name: 'Avocats',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kg'
    },
    {
      name: 'Patates douces',
      package: 'box',
      price: 10,
      weight_value: 4,
      weight_type: 'kg'
    },
    {
      name: 'Mangues',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kg'
    },
    {
      name: 'Anones',
      package: 'box',
      price: 14,
      weight_value: 4,
      weight_type: 'kg'
    },
    {
      name: 'Pamplemousses',
      package: 'box',
      price: 11.75,
      weight_value: 5,
      weight_type: 'kg'
    },
    {
      name: 'Papaye',
      package: 'box',
      price: 18,
      weight_value: 4,
      weight_type: 'kg'
    },
    {
      name: 'Amande',
      package: 'tray',
      price: 16,
      weight_value: 1,
      weight_type: 'kg'
    },
    {
      name: 'Figues séchées',
      package: 'bag',
      price: 8,
      weight_value: 1,
      weight_type: 'kg'
    },
    {
      name: 'Tomates séchées',
      package: 'bag',
      price: 6,
      weight_value: 250,
      weight_type: 'g'
    },
    {
      name: 'Poivrons séchés',
      package: 'bag',
      price: 6.50,
      weight_value: 250,
      weight_type: 'g'
    },
    {
      name: 'Pain de figues',
      package: 'bag',
      price: 4.50,
      weight_value: 300,
      weight_type: 'g'
    },
    {
      name: 'Olives vertes',
      package: 'jar',
      price: 4,
      weight_value: 500,
      weight_type: 'g'
    },
    {
      name: 'Olives noires',
      package: 'jar',
      price: 3.80,
      weight_value: 250,
      weight_type: 'g'
    },
    {
      name: 'Tapenade',
      package: 'jar',
      price: 3.90,
      weight_value: 125,
      weight_type: 'g'
    },
    {
      name: 'huile d\'olive',
      package: 'bottle',
      price: 43,
      weight_value: 5,
      weight_type: 'L'
    }
  ]
)

Consumer.create(
  [
    {
      firstname: 'Jean-michel',
      lastname: 'paladin',
      email: 'jm@paladin.com'
    },
    {
      firstname: 'Bob',
      lastname: 'dylan',
      email: 'bob@gmail.com'
    }
  ]
)
