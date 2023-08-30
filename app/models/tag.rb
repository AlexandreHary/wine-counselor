class Tag < ApplicationRecord
  has_many :option_tags
  has_many :wine_tags

  validates :taste, presence: true
  validates :color, presence: true
  validates :event, presence: true
  validates :meal, presence: true
  validates :label, presence: true
end
