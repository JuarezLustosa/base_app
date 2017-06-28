class User < ApplicationRecord
	include Gravatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, email: true, presence: true, confirmation: true
end
