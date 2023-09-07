class Wine < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :wine_tags, dependent: :destroy
  has_many :tags, through: :wine_tags

  has_one_attached :wine_photo

  validates :rating, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :appellation, presence: true

  # selected_wine = Wine.find(@offer.wine_id)
  # wine_image_path = selected_wine.image_path

  #  validates :wine_photo, presence: true
end

# require 'combinatorics'

# tags = [1, 2, 3, 4, 5]
# combinations = tags.combination(3).to_a

# combinations.each do |combination|
#   puts combination.inspect
# end
