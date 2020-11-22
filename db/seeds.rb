# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'diego@mail.com', password: '123456')
salary = user.categories.create(name: 'Salary', transaction_type: 'income')
rent = user.categories.create(name: 'Rent', transaction_type: 'expense')
netflix = user.categories.create(name: 'Netflix', transaction_type: 'expense')
salary.transactions.create(amount: 5000, date: "2020-10-30")
salary.transactions.create(amount: 5000, date: "2020-09-30")
rent.transactions.create(amount: 1500, date: "2020-10-01")
rent.transactions.create(amount: 1500, date: "2020-11-01")
netflix.transactions.create(amount: 25, date: "2020-10-15")
netflix.transactions.create(amount: 25, date: "2020-11-15")
