class Planet < ApplicationRecord
  belongs_to :user

  has_many :users, through: :bookings
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :photo, presence: true
  validates :price, presence: true
end
