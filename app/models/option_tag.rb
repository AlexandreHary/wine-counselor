class OptionTag < ApplicationRecord
  belongs_to :option, dependent: :destroy
  belongs_to :tag, dependent: :destroy
end
