class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 30 }, uniqueness: true
  validates :email, presence: true, length: { maximum: 255 }, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8, maximum: 72 }
end
