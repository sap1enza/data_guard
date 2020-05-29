# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unit1 = FactoryBot.create(:unit)
unit2 = FactoryBot.create(:unit)
unit3 = FactoryBot.create(:unit)

FactoryBot.create_list(:employee, 13, unit: unit1)
FactoryBot.create_list(:employee, 20, unit: unit2)
FactoryBot.create_list(:employee, 6, unit: unit3)
