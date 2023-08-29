class Wine < ApplicationRecord
  validates :rating, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :appellation, presence: true
end
