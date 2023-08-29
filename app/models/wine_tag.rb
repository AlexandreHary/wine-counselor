class WineTag < ApplicationRecord
  belongs_to :tag
  belongs_to :wine
end
