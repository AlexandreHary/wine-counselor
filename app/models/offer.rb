class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  has_one_attached :offer_photo
  validates :quantity, presence: true
  validates :price, presence: true
  validates :url, presence: true
end
