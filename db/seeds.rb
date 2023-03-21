# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

pizza1 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
pizza2 = Pizza.create(name: "Meat", ingredients: "flour,  oregano, tomatos,")
pizza3 = Pizza.create(name: "Hawaiian", ingredients: "flour, cheese, ketchup, mushroom")
pizza4 = Pizza.create(name: "BBQ", ingredients: "flour, meat, cheese, dough")
pizza5 = Pizza.create(name: "Buffalo", ingredients: "flour, buffalo meat, sauce")
pizza6 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza7 = Pizza.create(name: "Veggie", ingredients: "flour, onion,pepper")
pizza8 = Pizza.create(name: "Margherita", ingredients: "pepper, ketchup,flour, cheese")
pizza9 = Pizza.create(name: "Supreme", ingredients: "flour, cheese, ketchup")
pizza10 = Pizza.create(name: "Delux", ingredients: "flour, sugar, meat,chicken")


restaurant1 = Restaurant.create(name: "Meek", address: "40th park")
restaurant2 = Restaurant.create(name: "Watery", address: "40th park")
restaurant3 = Restaurant.create(name: "One way stop", address: "40th park")
restaurant4 = Restaurant.create(name: "Fully Tummy", address: "40th park")
restaurant5 = Restaurant.create(name: "Mom's best food", address: "40th park")

10.times do
    restaurant_pizzas = RestaurantPizza.create(price: rand(1..30), pizza_id: rand(1..10), restaurant_id: rand(1..5))
end