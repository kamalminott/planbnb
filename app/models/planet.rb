class Planet < ApplicationRecord
  belongs_to :user

  has_many :users, through: :bookings
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_address_and_description,
    against: [ :name, :address, :description ],
    using: {
      tsearch: { prefix: true }
  }
end
