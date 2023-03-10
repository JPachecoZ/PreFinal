# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Start seeding data"

User.destroy_all

user_data = {
  password: '123456',
  first_name: 'Test',
  last_name: 'User',
  phone: '987654321'
}

categories_data = [
  { name: 'Salary', transaction_type: 'income', color: "green", icon: "bank" },
  { name: 'Independent', transaction_type: 'income', color: "teal", icon: "bill" },
  { name: 'Food', transaction_type: 'expense', color: "orange", icon: "cart" },
  { name: 'Transportation', transaction_type: 'expense', color: "blue", icon: "car" },
  { name: 'Utilities', transaction_type: 'expense', color: "yellow", icon: "bill" },
  { name: 'Education', transaction_type: 'expense', color: "cyan", icon: "education" },
  { name: 'Entertainment', transaction_type: 'expense', color: "red", icon: "game" },
  { name: 'Other', transaction_type: 'expense', color: "light-blue", icon: "bill" }
]

transactions_data = {
  'Salary' => [
    { amount: 2600, date: '2021-09-30'},
    { amount: 2600, date: '2021-10-30'},
    { amount: 2600, date: '2021-11-30'}
  ],
  'Independent' => [
    { amount: 300, date: '2021-09-15', notes: 'Landing page for my uncle' },
    { amount: 350, date: '2021-10-15', notes: 'Landing page for my uncle friend' },
    { amount: 600, date: '2021-11-20', notes: 'Script to parse a lot of excel files' },
    { amount: 800, date: '2021-12-20', notes: 'Scraping tool to get prices' }
  ],
  'Food' => [
    { amount: 75, date: '2021-09-01', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-09-08', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-09-15', notes: 'Weekly groceries shopping' },
    { amount: 64, date: '2021-09-22', notes: 'Weekly groceries shopping' },
    { amount: 68, date: '2021-09-29', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-10-05', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-10-12', notes: 'Weekly groceries shopping' },
    { amount: 80, date: '2021-10-19', notes: 'Weekly groceries shopping' },
    { amount: 60, date: '2021-10-26', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-11-03', notes: 'Weekly groceries shopping' },
    { amount: 75, date: '2021-11-10', notes: 'Weekly groceries shopping' },
    { amount: 61, date: '2021-11-17', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-11-24', notes: 'Weekly groceries shopping' },
    { amount: 69, date: '2021-11-31', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-12-07', notes: 'Weekly groceries shopping' },
    { amount: 64, date: '2021-12-14', notes: 'Weekly groceries shopping' }
  ],
  'Transportation' => [
    { amount: 14, date: '2021-09-02', notes: 'Taxis' },
    { amount: 2, date: '2021-09-05', notes: 'Public' },
    { amount: 13, date: '2021-09-09', notes: 'Taxis' },
    { amount: 3, date: '2021-09-13', notes: 'Public' },
    { amount: 10, date: '2021-09-16', notes: 'Taxis' },
    { amount: 2, date: '2021-09-20', notes: 'Public' },
    { amount: 13, date: '2021-09-23', notes: 'Taxis' },
    { amount: 10, date: '2021-09-30', notes: 'Taxis' },
    { amount: 2, date: '2021-10-02', notes: 'Public' },
    { amount: 12, date: '2021-10-06', notes: 'Taxis' },
    { amount: 4, date: '2021-10-10', notes: 'Public' },
    { amount: 12, date: '2021-10-13', notes: 'Taxis' },
    { amount: 2, date: '2021-10-16', notes: 'Public' },
    { amount: 10, date: '2021-10-20', notes: 'Taxis' },
    { amount: 4, date: '2021-10-21', notes: 'Public' },
    { amount: 13, date: '2021-10-27', notes: 'Taxis' },
    { amount: 2, date: '2021-10-30', notes: 'Public' },
    { amount: 15, date: '2021-11-04', notes: 'Taxis' },
    { amount: 4, date: '2021-11-08', notes: 'Public' },
    { amount: 12, date: '2021-11-11', notes: 'Taxis' },
    { amount: 2, date: '2021-11-15', notes: 'Public' },
    { amount: 11, date: '2021-11-18', notes: 'Taxis' },
    { amount: 3, date: '2021-11-22', notes: 'Public' },
    { amount: 12, date: '2021-11-25', notes: 'Taxis' },
    { amount: 4, date: '2021-11-27', notes: 'Public' },
    { amount: 15, date: '2021-12-01', notes: 'Taxis' },
    { amount: 4, date: '2021-12-04', notes: 'Public' },
    { amount: 13, date: '2021-12-08', notes: 'Taxis' },
    { amount: 3, date: '2021-12-10', notes: 'Public' },
    { amount: 14, date: '2021-12-14', notes: 'Taxis' },
  ],
  'Utilities' => [
    { amount: 35, date: '2021-09-20', notes: 'Electricity' },
    { amount: 33, date: '2021-10-20', notes: 'Electricity' },
    { amount: 36, date: '2021-11-20', notes: 'Electricity' },
  ],
  'Education' => [
    { amount: 520, date: '2021-10-10', notes: 'Lumni' },
    { amount: 520, date: '2021-11-10', notes: 'Lumni' },
    { amount: 520, date: '2021-12-10', notes: 'Lumni' }
  ],
  'Entertainment' => [
    { amount: 25, date: '2021-09-17', notes: 'Netflix account' },
    { amount: 25, date: '2021-10-17', notes: 'Netflix account' },
    { amount: 25, date: '2021-11-17', notes: 'Netflix account' },
  ],
  'Other' => [
    { amount: 120, date: '2021-10-12', notes: 'Headphones' },
    { amount: 250, date: '2021-11-20', notes: 'HD Webcam' },
    { amount: 220, date: '2021-12-12', notes: 'Keyboard' }
  ]
}

1.upto(40) do |n|
  user_data[:email] = "test#{n}@mail.com"
  user = User.create(**user_data)
  categories = categories_data.map { |category_data| user.categories.create(**category_data) }
  categories.each do |category|
    cat_transactions = transactions_data[category.name]
    cat_transactions.each { |transaction_data| category.transactions.create(**transaction_data) }
  end
end

puts 'Database seeded'
