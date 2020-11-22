class Category < ApplicationRecord
  enum transaction_type: { expense: 0, income: 1 }
  has_many :transactions, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: %i[user transaction_type] }
end
