class Wine < ApplicationRecord
  has_many :bookings
  has_many :offers
  has_many :wine_tags
  validates :rating, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :appellation, presence: true
end
