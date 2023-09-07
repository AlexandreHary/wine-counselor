class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_picture

  has_many :chatrooms, dependent: :destroy
  has_many :offers, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true

  enum role: { visitor: 0, caviste: 1 }
end
