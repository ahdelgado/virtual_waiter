# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





client = Client.first

fiebrec = client.restaurant_chains << RestaurantChain.create(name: 'La Fiebre', logo: client.logo)
fiebre = fiebrec.first.restaurants << Restaurant.create(name: 'La Fiebre', logo: client.logo)
fiebre.first.address = Address.create(address1: 'PO Box 171', city: 'Rincon', state: 'PR', zip: '00677', country: 'USA')

menu = fiebre.first.menus << Menu.create(name: "Dinner")

combos = menu.first.sections << Section.create(name: "Combo Entrees", sectionable: menu.first)

angus = combos.first.items << Item.create(name: "Angus Chop Steak Combo")

side1 = angus.first.sections << Section.create(name: "Side #1")

side1.first.items << Item.create(name: "Mashed Potatoes")
side1.first.items << Item.create(name: "Green Beans")
side1.first.items << Item.create(name: "Corn")
side1.first.items << Item.create(name: "Spinach")
side1.first.items << Item.create(name: "Broccoli")
side1.first.items << Item.create(name: "Cabbage")

side2 = angus.first.sections << Section.create(name: "Side #2")

side2.first.items << Item.create(name: "Mashed Potatoes")
side2.first.items << Item.create(name: "Green Beans")
side2.first.items << Item.create(name: "Corn")
side2.first.items << Item.create(name: "Spinach")
side2.first.items << Item.create(name: "Broccoli")
side2.first.items << Item.create(name: "Cabbage")

gravy = angus.first.sections << Section.create(name: "Choice of Gravy", required: true)

gravy.first.items << Item.create(name: "Cream Gravy")
gravy.first.items << Item.create(name: "Brown Gravy")
gravy.first.items << Item.create(name: "Natural Gravy")

condiments = angus.first.sections << Section.create(name: "Condiments", required: true)

condiments.first.items << Item.create(name: "Tartar sauce")
condiments.first.items << Item.create(name: "Cocktail Sauce")
condiments.first.items << Item.create(name: "A1 Sauce")
condiments.first.items << Item.create(name: "Hot Sauce")
condiments.first.items << Item.create(name: "Ketchup")
condiments.first.items << Item.create(name: "Sugar", price: 100)


