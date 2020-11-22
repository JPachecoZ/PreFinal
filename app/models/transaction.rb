class Transaction < ApplicationRecord
  belongs_to :category

  validates :amount, numericality: { only_integer: true, other_than: 0 }
  validates :date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
end
