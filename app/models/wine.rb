class Wine < ApplicationRecord
  has_many :bookings
  has_many :offers
  has_many :wine_tags

  has_one_attached :wine_photo

  validates :rating, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :appellation, presence: true
  #  validates :wine_photo, presence: true
end
