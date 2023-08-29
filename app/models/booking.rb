class Booking < ApplicationRecord
  belongs_to :chatroom
  belongs_to :wine
end
