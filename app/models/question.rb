class Question < ApplicationRecord
  has_many :options, dependent: :destroy
  validates :title, presence: true
  validates :position, presence: true
  validates :last, inclusion: { in: [true, false] }

  def next_question
    Question.find_by(position: self.position + 1)
  end
end
