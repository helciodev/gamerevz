class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :games_reviewd, through: :reviews, resource: :game

  validates :name, presence: true
  validates :email, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
}
end
