class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :bookings
end
