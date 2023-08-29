class Question < ApplicationRecord
  has_many :options
  validates :title, presence: true
  validates :position, presence: true
  validates :last, inclusion: { in: [true, false] }
end
