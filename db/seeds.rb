# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Broker.destroy_all
Admin.destroy_all

User.create(email: "buyer@gmail.com", password: "Admin123")
User.create(email: "buyer_AAA@gmail.com", password: "Admin123")
User.create(email: "buyer_BBBB@gmail.com", password: "Admin123")

Broker.create(email: "broker@gmail.com", password: "Admin123")
Broker.create(email: "broker_XXX@gmail.com", password: "Admin123")
Broker.create(email: "broker_YYY@gmail.com", password: "Admin123")

Admin.create(email: "admin@gmail.com", password: "Admin123")
Admin.create(email: "admin2@gmail.com", password: "Admin123")