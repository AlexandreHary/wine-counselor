class Wine < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :wine_tags, dependent: :destroy

  has_one_attached :wine_photo

  validates :rating, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :appellation, presence: true
  #  validates :wine_photo, presence: true
end
