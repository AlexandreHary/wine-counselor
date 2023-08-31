class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :bookings
  has_many :options, through: :answers

  def current_question
    options.last.question
  end
end
