require 'combinatorics'

class Chatroom < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :options, through: :answers, dependent: :destroy
  has_many :option_tags, through: :options, dependent: :destroy
  has_many :tags, through: :option_tags, dependent: :destroy

  def current_question
    options.last.question
  end

  def matched_wines
    wines = Wine.where(id: 0)

    self.tags.map(&:id).combination(3).to_a.each do |tags|
      wines1 = Wine.where(id: (Wine.connection.select_all("
        WITH transition  AS ( SELECT wines.* FROM wines INNER JOIN wine_tags ON wine_tags.wine_id = wines.id WHERE wine_tags.tag_id =#{ tags[0]}),
        transition2 AS ( SELECT transition.* FROM transition INNER JOIN wine_tags ON wine_tags.wine_id = transition.id WHERE wine_tags.tag_id =#{ tags[1]})
        SELECT transition2.* FROM transition2 INNER JOIN wine_tags ON wine_tags.wine_id = transition2.id WHERE wine_tags.tag_id =#{ tags[2]}
        ").to_a.map{|wine| wine["id"]}))

      wines = wines.or(wines1)
    end

    wines
  end
end
