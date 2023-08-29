class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :wine

  validates :quantity, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :url, presence: true
end
