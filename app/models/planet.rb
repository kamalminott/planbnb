class Planet < ApplicationRecord
  belongs_to :user

  has_many :users, through: :bookings
  has_many :bookings

end
