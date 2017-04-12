# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
grandmas_house = House.create(address: '7 Lakeview Dr')
eds_house = House.create(address: '1670 Hayes St')

jill = Person.create(name: 'Jill', house_id: grandmas_house.id)
john = Person.create(name: 'John', house_id: grandmas_house.id)
ed = Person.create(name: 'Ed', house_id: eds_house.id)
