class Option < ApplicationRecord
  belongs_to :question

  validates :verbose, presence: true
  validates :small, presence: true
end
