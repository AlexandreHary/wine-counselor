class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :options, through: :answers
  has_many :answers
  has_many :option_tags, through: :options
  has_many :tags, through: :option_tags

  def current_question
    options.last.question
  end

  def matched_wines
    Wine.joins(:wine_tags).where(wine_tags: { tag_id: self.tags.map(&:id) }).distinct
  end
end
