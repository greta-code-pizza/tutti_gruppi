# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  { name: 'Oranges de table', package: 'box', price: 11.10, weight: '6 kg' },
  { name: 'Oranges à jus', package: 'box', price: 6.25, weight: '5 kg' },
  { name: 'Citrons', package: 'box', price: 8.58, weight: '3.5 kg' },
  { name: 'Mandarines', package: 'box', price: 12, weight: '5 kg' },
  { name: 'Avocats', package: 'box', price: 18, weight: '4 kg' },
  { name: 'Patates douces', package: 'box', price: 10, weight: '4 kg' },
  { name: 'Mangues', package: 'box', price: 18, weight: '4 kg' },
  { name: 'Anones', package: 'box', price: 14, weight: '4 kg' },
  { name: 'Pamplemousses', package: 'box', price: 11.75, weight: '5 kg' },
  { name: 'Papaye', package: 'box', price: 18, weight: '4 kg' },
  { name: 'Amande', package: 'tray', price: 16, weight: '1 kg' },
  { name: 'Figues séchées', package: 'bag', price: 8, weight: '1 kg' },
  { name: 'Tomates séchées', package: 'bag', price: 6, weight: '250 g' },
  { name: 'Poivrons séchés', package: 'bag', price: 6.50, weight: '250 g' },
  { name: 'Pain de figues', package: 'bag', price: 4.50, weight: '300 g' },
  { name: 'Olives vertes', package: 'jar', price: 4, weight: '500 g' },
  { name: 'Olives noires', package: 'jar', price: 3.80, weight: '250 g' },
  { name: 'Tapenade', package: 'jar', price: 3.90, weight: '125 g' },
  { name: 'huile d\'olive', package: 'bottle', price: 43, weight: '5 L' }
])

Consumer.create([
  { firstname: 'Jean-michel', lastname: 'paladin', email: 'jean-mimi@paladin.com' },
  { firstname: 'Bob', lastname: 'dylan', email: 'bob@gmail.com' }
])
