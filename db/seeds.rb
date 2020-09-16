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

menus = fiebre.first.menus << Menu.create(name: "Dinner")

combos = menus.first.sections << Section.create(name: "Combo Entrees", sectionable: menus.first)

angus = combos.first.items << Item.create(name: "Angus Chop Steak Combo")

side1 = angus.first.sections << Section.create(name: "Side #1", description: 'Served with two sides, a side salad and a drink.', required: true, max_selectable: 1)

side1.first.items << Item.create(name: "Mashed Potatoes")
side1.first.items << Item.create(name: "Green Beans")
side1.first.items << Item.create(name: "Corn")
side1.first.items << Item.create(name: "Spinach")
side1.first.items << Item.create(name: "Broccoli")
side1.first.items << Item.create(name: "Cabbage")

mashed = side1.first.items[0]
greens = side1.first.items[1]
corn = side1.first.items[2]
spinach = side1.first.items[3]
broccoli = side1.first.items[4]
cabbage = side1.first.items[5]

side2 = angus.first.sections << Section.create(name: "Side #2", description: 'Served with two sides, a side salad and a drink.')

side2.items << mashed
side2.items << greens
side2.items << corn
side2.items << spinach
side2.items << broccoli
side2.items << cabbage

gravy = angus.first.sections << Section.create(name: "Choice of Gravy", required: true, max_selectable: 1)

gravy.first.items << Item.create(name: "Cream Gravy")
gravy.first.items << Item.create(name: "Brown Gravy")
gravy.first.items << Item.create(name: "Natural Gravy")

condiments = angus.first.sections << Section.create(name: "Condiments", required: true, max_selectable: -1)

condiments.first.items << Item.create(name: "Tartar sauce")
condiments.first.items << Item.create(name: "Cocktail Sauce")
condiments.first.items << Item.create(name: "A1 Sauce")
condiments.first.items << Item.create(name: "Hot Sauce")
condiments.first.items << Item.create(name: "Ketchup")
condiments.first.items << Item.create(name: "Sugar", price: 100)


