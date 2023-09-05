class Tag < ApplicationRecord
  has_many :option_tags
  has_many :wine_tags

  validates :category, presence: true
  validates :value, presence: true

end
