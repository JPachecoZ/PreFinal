# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all

user_data = {
  password: '123456',
  first_name: 'Test',
  last_name: 'User',
  phone: '987654321'
}

categories_data = [
  { name: 'Salary', transaction_type: 'income' },
  { name: 'Independent', transaction_type: 'income' },
  { name: 'Food', transaction_type: 'expense' },
  { name: 'Transportation', transaction_type: 'expense' },
  { name: 'Utilities', transaction_type: 'expense' },
  { name: 'Education', transaction_type: 'expense' },
  { name: 'Entertainment', transaction_type: 'expense' },
  { name: 'Other', transaction_type: 'expense' }
]

transactions_data = {
  'Salary' => [
    { amount: 2600, date: '2021-04-30'},
    { amount: 2600, date: '2021-05-30'},
    { amount: 2600, date: '2021-06-30'}
  ],
  'Independent' => [
    { amount: 300, date: '2021-04-15', notes: 'Landing page for my uncle' },
    { amount: 350, date: '2021-05-15', notes: 'Landing page for my uncle friend' },
    { amount: 600, date: '2021-06-20', notes: 'Script to parse a lot of excel files' },
    { amount: 800, date: '2021-07-20', notes: 'Scraping tool to get prices' }
  ],
  'Food' => [
    { amount: 75, date: '2021-04-01', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-04-08', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-04-15', notes: 'Weekly groceries shopping' },
    { amount: 64, date: '2021-04-22', notes: 'Weekly groceries shopping' },
    { amount: 68, date: '2021-04-29', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-05-05', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-05-12', notes: 'Weekly groceries shopping' },
    { amount: 80, date: '2021-05-19', notes: 'Weekly groceries shopping' },
    { amount: 60, date: '2021-05-26', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-06-03', notes: 'Weekly groceries shopping' },
    { amount: 75, date: '2021-06-10', notes: 'Weekly groceries shopping' },
    { amount: 61, date: '2021-06-17', notes: 'Weekly groceries shopping' },
    { amount: 70, date: '2021-06-24', notes: 'Weekly groceries shopping' },
    { amount: 69, date: '2021-06-31', notes: 'Weekly groceries shopping' },
    { amount: 72, date: '2021-07-07', notes: 'Weekly groceries shopping' },
    { amount: 64, date: '2021-07-14', notes: 'Weekly groceries shopping' }
  ],
  'Transportation' => [
    { amount: 14, date: '2021-04-02', notes: 'Taxis' },
    { amount: 2, date: '2021-04-05', notes: 'Public' },
    { amount: 13, date: '2021-04-09', notes: 'Taxis' },
    { amount: 3, date: '2021-04-13', notes: 'Public' },
    { amount: 10, date: '2021-04-16', notes: 'Taxis' },
    { amount: 2, date: '2021-04-20', notes: 'Public' },
    { amount: 13, date: '2021-04-23', notes: 'Taxis' },
    { amount: 10, date: '2021-04-30', notes: 'Taxis' },
    { amount: 2, date: '2021-05-02', notes: 'Public' },
    { amount: 12, date: '2021-05-06', notes: 'Taxis' },
    { amount: 4, date: '2021-05-10', notes: 'Public' },
    { amount: 12, date: '2021-05-13', notes: 'Taxis' },
    { amount: 2, date: '2021-05-16', notes: 'Public' },
    { amount: 10, date: '2021-05-20', notes: 'Taxis' },
    { amount: 4, date: '2021-05-21', notes: 'Public' },
    { amount: 13, date: '2021-05-27', notes: 'Taxis' },
    { amount: 2, date: '2021-05-30', notes: 'Public' },
    { amount: 15, date: '2021-06-04', notes: 'Taxis' },
    { amount: 4, date: '2021-06-08', notes: 'Public' },
    { amount: 12, date: '2021-06-11', notes: 'Taxis' },
    { amount: 2, date: '2021-06-15', notes: 'Public' },
    { amount: 11, date: '2021-06-18', notes: 'Taxis' },
    { amount: 3, date: '2021-06-22', notes: 'Public' },
    { amount: 12, date: '2021-06-25', notes: 'Taxis' },
    { amount: 4, date: '2021-06-27', notes: 'Public' },
    { amount: 15, date: '2021-07-01', notes: 'Taxis' },
    { amount: 4, date: '2021-07-04', notes: 'Public' },
    { amount: 13, date: '2021-07-08', notes: 'Taxis' },
    { amount: 3, date: '2021-07-10', notes: 'Public' },
    { amount: 14, date: '2021-07-14', notes: 'Taxis' },
  ],
  'Utilities' => [
    { amount: 35, date: '2021-04-20', notes: 'Electricity' },
    { amount: 33, date: '2021-05-20', notes: 'Electricity' },
    { amount: 36, date: '2021-06-20', notes: 'Electricity' },
  ],
  'Education' => [
    { amount: 520, date: '2021-05-10', notes: 'Lumni' },
    { amount: 520, date: '2021-06-10', notes: 'Lumni' },
    { amount: 520, date: '2021-07-10', notes: 'Lumni' }
  ],
  'Entertainment' => [
    { amount: 25, date: '2021-04-17', notes: 'Netflix account' },
    { amount: 25, date: '2021-05-17', notes: 'Netflix account' },
    { amount: 25, date: '2021-06-17', notes: 'Netflix account' },
  ],
  'Other' => [
    { amount: 120, date: '2021-05-12', notes: 'Headphones' },
    { amount: 250, date: '2021-06-20', notes: 'HD Webcam' },
    { amount: 220, date: '2021-07-12', notes: 'Keyboard' }
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
