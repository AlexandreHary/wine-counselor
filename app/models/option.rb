class Option < ApplicationRecord
  belongs_to :question
  has_many :answers
  has_many :option_tags

  validates :verbose, presence: true
  validates :small, presence: true
end
