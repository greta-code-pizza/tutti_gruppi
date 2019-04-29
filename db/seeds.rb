# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
    { name: 'Carottes', package: 'caisse', price: '10€' },
    { name: 'Tomates', package: 'caisse', price: '8€' },
    { name: 'Patates', package: 'Bocal', price: '4€' },
    { name: 'Papaye', package: 'caisse', price: '19€' }
])

# Consumer.create([
#     { firstname: 'Jean-michel', lastname: 'paladin', email: 'jean-mimi@paladin.com' },
#     { firstname: 'Bob', lastname: 'dylan', email: 'bob@gmail.com' }
# ])


