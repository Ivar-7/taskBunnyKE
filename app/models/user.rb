class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: Devise.email_regexp }
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }
end
