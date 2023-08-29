class Wine < ApplicationRecord
  has_many :bookings
  has_many :offers
  has_many :wine_tags
end
