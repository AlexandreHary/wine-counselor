class Option < ApplicationRecord
  belongs_to :question
  has_many :answers
  has_many :option_tags
end
