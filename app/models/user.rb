class User < ApplicationRecord
  has_secure_token :token, length: 50
  validates :email, presence: true

  validates :password, length: { minimum: 6 }, if: :password_present?
  validates :password_confirmation, length: { minimum: 6 }, if: :password_present?

  has_secure_password
  has_many :articles
  has_one :profile

  private

  def password_present?
    false || password.present?
  end
end
