class Assassin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
#   validates :photo, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  has_many :reservations
#   has_many :reviews, through: :reservations
#   has_attachment :photo
end
