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
Stock.destroy_all

c1 = User.create(email: "buyer@gmail.com", password: "Admin123")
c2 = User.create(email: "buyer_AAA@gmail.com", password: "Admin123")
c3 = User.create(email: "buyer_BBBB@gmail.com", password: "Admin123")

c1.stocks.create(stock_name: "amzn", asset: "0")
c1.stocks.create(stock_name: "fb", asset: "10")
c1.stocks.create(stock_name: "twtr", asset: "3")
c1.stocks.create(stock_name: "nflx", asset: "5")

c2.stocks.create(stock_name: "amzn", asset: "2")
c2.stocks.create(stock_name: "fb", asset: "0")
c2.stocks.create(stock_name: "twtr", asset: "2")
c2.stocks.create(stock_name: "nflx", asset: "0")

c3.stocks.create(stock_name: "amzn", asset: "0")
c3.stocks.create(stock_name: "fb", asset: "3")
c3.stocks.create(stock_name: "twtr", asset: "0")
c3.stocks.create(stock_name: "nflx", asset: "1")


b1 = Broker.create(email: "broker@gmail.com", password: "Admin123", approved: "true")
b2 = Broker.create(email: "broker_XXX@gmail.com", password: "Admin123")
b3 = Broker.create(email: "broker_YYY@gmail.com", password: "AdminAdmin123")

a1 = Admin.create(email: "admin@gmail.com", password: "Admin123")


b1.stocks.create(stock_name: "amzn", asset: "100")
b1.stocks.create(stock_name: "fb", asset: "100")
b1.stocks.create(stock_name: "twtr", asset: "100")
b1.stocks.create(stock_name: "nflx", asset: "100")

# a1.stocks.create(stock_name: "amzn", asset: "0")
# a1.stocks.create(stock_name: "fb", asset: "0")
# a1.stocks.create(stock_name: "twtr", asset: "0")
# a1.stocks.create(stock_name: "nflx", asset: "0")