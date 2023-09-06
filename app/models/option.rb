class Option < ApplicationRecord
  belongs_to :question
  has_many :answers, dependent: :destroy
  has_many :option_tags, dependent: :destroy
  has_many :tags, through: :option_tags

  validates :verbose, presence: true
  validates :small, presence: true

  def full_sentence
    "#{self.verbose} #{self.small.downcase}"
  end
end
