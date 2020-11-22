class User < ApplicationRecord
  PHONE_REGEXP = /\A(\+?\d{2})?\s?\d{9}\z/.freeze

  has_secure_password
  has_secure_token

  has_many :categories, dependent: :destroy
  has_many :transactions, through: :categories

  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP },
                    uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, format: { with: PHONE_REGEXP }, allow_nil: true
end
