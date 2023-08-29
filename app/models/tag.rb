class Tag < ApplicationRecord
  has_many :option_tags
  has_many :wine_tags
end
