# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  { name: 'Oranges de table', package: 'caissette', price: 11.10, weight: '6 kg' },
  { name: 'Oranges à jus', package: 'caissette', price: 6.25, weight: '5 kg' },
  { name: 'Citrons', package: 'caissette', price: 8.58, weight: '3.5 kg' },
  { name: 'Mandarines', package: 'caissette', price: 12, weight: '5 kg' },
  { name: 'Avocats', package: 'caissette', price: 18, weight: '4 kg' },
  { name: 'Patates douces', package: 'caissette', price: 10, weight: '4 kg' },
  { name: 'Mangues', package: 'caissette', price: 18, weight: '4 kg' },
  { name: 'Anones', package: 'caissette', price: 14, weight: '4 kg' },
  { name: 'Pamplemousses', package: 'caissette', price: 11.75, weight: '5 kg' },
  { name: 'Papaye', package: 'caissette', price: 18, weight: '4 kg' },
  { name: 'Amande', package: 'barquette', price: 16, weight: '1 kg' },
  { name: 'Figues séchées', package: 'sachet', price: 8, weight: '1 kg' },
  { name: 'Tomates séchées', package: 'sachet', price: 6, weight: '250 g' },
  { name: 'Poivrons séchés', package: 'sachet', price: 6.50, weight: '250 g' },
  { name: 'Pain de figues', package: 'sachet', price: 4.50, weight: '300 g' },
  { name: 'Olives vertes', package: 'bocal', price: 4, weight: '500 g' },
  { name: 'Olives noires', package: 'bocal', price: 3.80, weight: '250 g' },
  { name: 'Tapenade', package: 'bocal', price: 3.90, weight: '125 g' },
  { name: 'huile d\'olive', package: 'bidon', price: 43, weight: '5 L' }
])

Consumer.create([
  { firstname: 'Jean-michel', lastname: 'paladin', email: 'jean-mimi@paladin.com' },
  { firstname: 'Bob', lastname: 'dylan', email: 'bob@gmail.com' }
])
