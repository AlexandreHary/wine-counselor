class Tag < ApplicationRecord
  has_many :option_tags, dependent: :destroy
  has_many :options, through: :option_tags, dependent: :destroy
  has_many :wine_tags, dependent: :destroy
  has_many :wines, through: :wine_tags, dependent: :destroy

  validates :category, presence: true
  validates :value, presence: true
end
