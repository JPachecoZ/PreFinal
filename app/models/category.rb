class Category < ApplicationRecord
  enum transaction_type: { expense: 0, income: 1 }

  has_many :transactions, dependent: :destroy

  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: %i[user transaction_type] }
  validates :transaction_type, presence: true
  validates :color, inclusion: { in: %w(red orange yellow green teal cyan light-blue blue),
    message: "%{value} is not a valid color" }
  validates :icon, inclusion: { in: %w(bank cart health game bill education car gift),
    message: "%{value} is not a valid icon" }
end
